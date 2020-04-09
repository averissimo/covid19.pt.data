#' Extract number of cases from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_cases <- function(page) {
  extract_generic(page, 'Total de casos', 2) %>%
    return()
}

#' Extrac number of deaths from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_deaths <- function(page) {
  extract_generic(page, '\u00D3bitos', 1) %>%
    return()
}

#' Extrac number of recoveries from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_recoveries <- function(page) {
  extract_generic(page, 'Casos recuperados', 1) %>%
    return()
}

#' Generic extractor
#'
#' @param page page strings from document
#' @param pattern pattern to look for
#' @param interesting.hit which one to choose
#'
#' @return a number
extract_generic <- function(page, pattern, interesting.hit) {

  hits.ix <- stringr::str_which(page, pattern)

  hits <- page[hits.ix]

  hits.my <- hits[interesting.hit]

  if (grepl('{pattern}$' %>% glue::glue(), hits.my, ignore.case = TRUE)) {
    tmp <- page[c(hits.ix + 1)][[interesting.hit]] %>%
      stringr::str_replace('([0-9]+).*', '\\1')

    retValue <- NA
    tryCatch({
      retValue <- as.integer(tmp)
    })
    return(retValue)
  } else {
    tmp.regexec <- regexec('{pattern}[ ]+([0-9]*)' %>% glue::glue(), hits.my)
    tmp <- regmatches(hits.my, tmp.regexec)[[1]]

    retValue <- NA
    tryCatch({
      retValue <- as.integer(tmp[2])
    })
    return(retValue)
  }
}

#' Extract information from latest report of DGS
#'
#' @param index index of report to extract (1 is the latest)
#' @param only.date filter out if date isn't the same (NULL for keep whatever report it is)
#'
#' @return list with information that can be extracted
#' @export
#'
#' @examples
#' extract_info(date()) # keep only if it's from today
extract_info <- function(only.date = NULL, index = 1) {
  report.pdf <- download.report(only.date, index)


  info <- list(country = 'Portugal', date = NA, confirmed = NA, deaths = NA, recoveries = NA)
  if (!is.null(report.pdf)) {
    report.text <- report.pdf$data %>% pdftools::pdf_text()

    document <- stringr::str_split(report.text, '\n') %>%
      sapply(function(ix) {stringr::str_trim(gsub('  [ ]+', ' ', ix))})
    page1 <- document[[1]]

    info$confirmed <- extract_cases(page1)
    info$deaths <- extract_deaths(page1)
    info$recoveries <- extract_recoveries(page1)
    info$date <- report.pdf$date
  }
  return(info)
}

#' Download report
#'
#' @param index index of report to extract (1 is the latest)
#' @param only.date filter out if date isn't the same (NULL for keep whatever report it is)
#'
#' @return report contents
#' @export
download.report <- function(only.date = NULL, index = 1) {
  url <- 'https://covid19.min-saude.pt/relatorio-de-situacao/'

  #Reading the HTML code from the website
  webpage <- xml2::read_html(url)

  dates.raw <- rvest::html_nodes(webpage, '#MBV_Main .single_main .single_content ul li') %>%
    rvest::html_text() %>%
    stringr::str_replace('.*([0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9])', '\\1') %>%
    anytime::anydate(tz = '%d/%m/%Y')

  my.date <- dates.raw %>% purrr::pluck(index)

  if (!is.null(only.date)) {
    only.date <- anytime::anydate(only.date)
  }
  if (!is.null(only.date) && difftime(my.date, only.date, units = 'days') != 0) {
    return(NULL)
  }

  report.url <- rvest::html_nodes(webpage, '#MBV_Main .single_main .single_content ul li a') %>%
    rvest::html_attr('href') %>%
    purrr::pluck(index) %>%
    URLencode()

  pdf.content <- httr::GET(report.url) %>% httr::content("raw")

  return(list(date = my.date, data = pdf.content))
}

#' Downloads EU CDC data
#'
#' @return data
download.eucdc.data <- function() {
  eu.data.raw <- readr::read_csv('https://opendata.ecdc.europa.eu/covid19/casedistribution/csv')

  eu.data <- eu.data.raw %>%
    dplyr::filter(countriesAndTerritories == 'Portugal') %>%
    dplyr::mutate(countriesAndTerritories = iconv(countriesAndTerritories, to = 'UTF-8'))

  list(data = eu.data, source = 'EU CDC') %>%
    return()
}

#' Downloads all reports that are not in cache
#'
#' @return data from dgs
#' @export
download_all_reports <- function() {
  dgs.pt <- tibble::tibble()
  tryCatch(dgs.pt <- covid19.pt.data::dgs.pt, error = function(err) { })

  url <- 'https://covid19.min-saude.pt/relatorio-de-situacao/'

  #Reading the HTML code from the website
  webpage <- xml2::read_html(url)

  anytime::addFormats('%d/%m/%Y')

  dates.raw <- rvest::html_nodes(webpage, '#MBV_Main .single_main .single_content ul li') %>%
    rvest::html_text() %>%
    stringr::str_replace('.*([0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9])', '\\1') %>%
    anytime::anydate()

  dates.valid <- dates.raw %>%
    purrr::compact() %>%
    purrr::discard(function(x) {difftime(x, '2020/03/24', units = 'day') < 0})

  what.to.search <- which(dates.valid %in% purrr::discard(dates.valid, dates.valid %in% dgs.pt$date))

  dgs.pt.new <- dgs.pt
  if (length(what.to.search) > 0) {
    for (x in seq_along(dates.valid)) {
      day <- extract_info(index = x)
      dgs.pt.new <- dgs.pt.new %>% bind_rows(day)
    }
  }

  return(dgs.pt.new)
}

#' Merge DGS and EU CDC data (that is downloaded inside function)
#'
#' @param dgs.pt.new dgs data
#'
#' @return consolidated data for Portugal
#' @export
merge_eu.cdc <- function(dgs.pt.new) {
  eu.data <- download.eucdc.data()

  from <- eu.data$data$dateRep %>% anytime::anydate() %>% max %>% as.Date()
  now  <- Sys.Date()
  tseq <- seq(from = from, to = now, by = "days")

  covid19.pt.new <- dgs.pt.new %>%
    dplyr::arrange(desc(date)) %>%
    dplyr::mutate(cases = zoo::rollapply(confirmed,
                                         width = 2,
                                         FUN = function(a){ if(length(a) <= 1) {return(a)} else {return(a[1] -a[2])}},
                                         fill = c(0,0,min(confirmed))),
                   deaths = zoo::rollapply(deaths,
                                           width = 2,
                                           FUN = function(a){ if(length(a) <= 1) {return(a)} else {return(a[1] -a[2])}},
                                           fill = c(0,0,min(confirmed))),
           countriesAndTerritories = 'Portugal',
           geoId = 'PT',
           countryterritoryCode = 'PRT',
           popData2018 = eu.data$data %>% dplyr::pull(popData2018) %>% purrr::pluck(1)) %>%
    #
    dplyr::filter(date %in% tseq) %>%
    dplyr::mutate(date = date + 1,
           day = lubridate::day(date),
           month = lubridate::month(date),
           year = lubridate::year(date),
           dateRep = format(date, '%d/%m/%Y')) %>%
    #
    dplyr::select(dateRep, day, month, year, cases, deaths, countriesAndTerritories, geoId, countryterritoryCode, popData2018) %>%
    #
    dplyr::bind_rows(eu.data$data)

  return(covid19.pt.new)
}

#' Merge EU CDC and PT DGS data (all in one)
#'
#' @return updated data
#' @export
download.updated.pt <- function() {
  dgs.pt.new <- download_all_reports() %>% distinct()

  covid19.pt.new <- merge_eu.cdc(dgs.pt.new)

  return(list(dgs.pt = dgs.pt.new, cdc.eu = covid19.pt.new))
}
