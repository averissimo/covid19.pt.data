#' @importFrom dplyr %>%

extract_cases <- function(page) {
  extract_generic(page, 'Total de casos', 2) %>%
    return()
}

extract_deaths <- function(page) {
  extract_generic(page, 'Óbitos', 1) %>%
    return()
}

extract_recoveries <- function(page) {
  extract_generic(page, 'Casos recuperados', 1) %>%
    return()
}

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


  info <- list(country = 'Portugal', date = NA, cases = NA, deaths = NA, recoveries = NA)
  if (!is.null(report.pdf)) {
    report.text <- report.pdf$data %>% pdftools::pdf_text()

    document <- stringr::str_split(report.text, '\n') %>%
      sapply(function(ix) {stringr::str_trim(gsub('  [ ]+', ' ', ix))})
    page1 <- document[[1]]

    info$cases <- extract_cases(page1)
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
  webpage <- read_html(url)

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
    purrr::pluck(index)

  pdf.content <- httr::GET(report.url) %>% httr::content("raw")

  return(list(date = my.date, data = pdf.content))
}

download.eucdc.data <- function() {
  eu.data.raw <- read_csv('https://opendata.ecdc.europa.eu/covid19/casedistribution/csv')

  eu.data <- eu.data.raw %>%
    filter(countriesAndTerritories == 'Portugal') %>%
    mutate(date = anydate(glue::glue('{year}/{month}/{day}')) - 1,
           country = countriesAndTerritories) %>%
    select(country, date, cases, deaths, popData2018, country.code = countryterritoryCode) %>%
    mutate(country = iconv(country, to = 'UTF-8')) %>%
    arrange(date) %>%
    group_by(country, country.code, date, popData2018) %>%
    summarise(cases = sum(cases),
              deaths = sum(deaths)) %>%
    group_by(country) %>%
    mutate(cumul.cases = cumsum(cases),
           cumul.deaths = cumsum(deaths)) %>%
    ungroup() %>%
    mutate(country = gsub('_', ' ', country)) %>%
    select(country, date, cases, cumul.cases, deaths, cumul.deaths, population = popData2018, country.code)

  list(data = eu.data, source = 'EU CDC') %>%
    return()
}
