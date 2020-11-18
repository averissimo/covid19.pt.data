

#              _   _
#  _ __   __ _| |_| |_ ___ _ __ _ __
# | '_ \ / _` | __| __/ _ \ '__| '_ \
# | |_) | (_| | |_| ||  __/ |  | | | |
# | .__/ \__,_|\__|\__\___|_|  |_| |_|
# |_|
#' Patterns to look at for individual data
#'
#' @param index name of pattern to extract
#'
#' @return a number
my.pattern <- function(index) {
  patterns <- list(hospitalized = 'DISTRIBUI\u00C7\u00C3O DOS CASOS EM INTERNAMENTO',
                   icu = 'DISTRIBUI\u00C7\u00C3O DOS CASOS EM INTERNAMENTO',
                   cases = 'EM VIGIL\u00C2NCIA',
                   deaths = 'RECUPERADOS',
                   recoveries = 'ATIVOS')
  return(patterns[[index]])
}

#  _                     _ _        _ _             _
# | |__   ___  ___ _ __ (_) |_ __ _| (_)_______  __| |
# | '_ \ / _ \/ __| '_ \| | __/ _` | | |_  / _ \/ _` |
# | | | | (_) \__ \ |_) | | || (_| | | |/ /  __/ (_| |
# |_| |_|\___/|___/ .__/|_|\__\__,_|_|_/___\___|\__,_|
#                 |_|
#' Extract number of hospitalized from report (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_hospitalized2 <- function(page) {
  dplyr::bind_cols(extract_generic2(page, 'hospitalized', 1, 1, FALSE) %>%
                     tibble::tibble(hospitalized = .),
                   extract_generic2(page, 'icu', 1, 2, FALSE) %>%
                     tibble::tibble(in.icu = .)) %>%
    return()
}

#
#   ___ __ _ ___  ___  ___
#  / __/ _` / __|/ _ \/ __|
# | (_| (_| \__ \  __/\__ \
#  \___\__,_|___/\___||___/
#
#' Extract number of cases from report (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_cases2 <- function(page) {
  return(extract_generic2(page, 'cases', 1, 1, FALSE) %>% tibble::tibble(confirmed = .))
}

#      _            _   _
#   __| | ___  __ _| |_| |__  ___
#  / _` |/ _ \/ _` | __| '_ \/ __|
# | (_| |  __/ (_| | |_| | | \__ \
#  \__,_|\___|\__,_|\__|_| |_|___/
#
#' Extract number of deaths from report  (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_deaths2 <- function(page) {
  tmp <- extract_generic2(page, 'deaths', 1, 6, FALSE) %>% tibble::tibble(deaths = .)

  if (is.na(tmp[1,1])) {
    tmp <- extract_generic2(page, 'deaths', 1, 3, FALSE) %>% tibble::tibble(deaths = .)
  }
  return(tmp)
}

#                                   _
#  _ __ ___  ___ _____   _____ _ __(_) ___  ___
# | '__/ _ \/ __/ _ \ \ / / _ \ '__| |/ _ \/ __|
# | | |  __/ (_| (_) \ V /  __/ |  | |  __/\__ \
# |_|  \___|\___\___/ \_/ \___|_|  |_|\___||___/
#
#' Extract number of recoveries from report (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_recoveries2 <- function(page) {
  extract_generic2(page, 'recoveries', 1, 1, FALSE) %>%
    tibble::tibble(recovered = .) %>%
    return()
}

#            _                  _
#   _____  _| |_ _ __ __ _  ___| |_ ___  _ __
#  / _ \ \/ / __| '__/ _` |/ __| __/ _ \| '__|
# |  __/>  <| |_| | | (_| | (__| || (_) | |
#  \___/_/\_\\__|_|  \__,_|\___|\__\___/|_|
#
#' Generic extractor
#'
#' @param page page strings from document
#' @param pattern pattern to look for
#' @param interesting.hit which one to choose
#'
#' @return a number
extract_generic2 <- function(page, pattern.name, interesting.hit, add.me = 0, last = FALSE) {

  pattern <- my.pattern(pattern.name)

  hits.ix <- stringr::str_which(page, pattern)

  page.sub <- page[seq(from = hits.ix, to = length(page))]
  hits <- page.sub[1 + add.me]

  if (pattern.name %in% c('deaths') && grepl('^[0-9]+$', hits)) {
    death.pattern <- '^[0-9]+( [0-9]+)? ([+]|[-])( [0-9]+( [0-9]+)?)?$'
    if (grepl(death.pattern, page.sub[1 + add.me - 1])) {
      return(extract_generic2(page, pattern.name, interesting.hit, add.me - 1, last))
    } else if (grepl(death.pattern, page.sub[1 + add.me + 1])) {
      return(extract_generic2(page, pattern.name, interesting.hit, add.me + 1, last))
    } else {
      # it will fail! shrugs
    }
  } else if (pattern.name %in% c('icu') && grepl('^([ ]*)?[+-]([ ]*)?[0-9]+', hits)) {
    return(extract_generic2(page, pattern.name, interesting.hit, add.me + 1, last))
  } else if (pattern.name %in% c('icu') && grepl('^[+]$', hits)) {
    return(extract_generic2(page, pattern.name, interesting.hit, add.me + 2, last))
  }

  hits.my <- hits[interesting.hit] %>% stringi::stri_enc_toascii() %>%
    gsub('\032', '', .)

  if (hits.my == 'INTERNAMENTO INTERNAMENTO') {
    return(extract_generic2(page, pattern, interesting.hit, add.me - 1, last))
  }

  page.line <- page[c(hits.ix + add.me)][[interesting.hit]]

  return(extract.page.line(pattern.name, page.line, last))
}

extract.page.line <- function(pattern.name, page.line, last) {
  # correct for + and -
  page.line <- page.line %>%
    stringr::str_replace_all('[+-]$', '-0') %>%
    stringr::str_replace_all('([+-]) ([0-9]+)', '\\1 \\2  ')

  if (pattern.name %in% c('icu')) {
    page.line <- page.line %>% stringr::str_replace_all('([0-9]) [-] ([0-9])', '\\1 -0 \\2')

    # correct for complex icu and hospitalized numbers
    page.line <- page.line %>% stringr::str_replace_all('([-+]) ?([0-9]+) ', '\\1\\2  ')
  }

  # correct for thousands operator
  page.line <- page.line %>% stringr::str_replace_all(' ([0-9][0-9][0-9])', '\\1')

  page.line <- page.line %>% stringr::str_trim()
  if (last) {
    if (grepl('[0-9]+ .*[0-9]+ .*[0-9]+ .*[0-9]+', page.line)) {
      suppressWarnings({
        tmp <- page.line %>%
          stringr::str_replace('.* ([0-9]+)( -)?$', '\\1') %>%
          as.integer()
      })
      if (is.na(tmp)) {
        tmp <- page.line %>%
          stringr::str_replace('.*[ +-]([0-9]+)[ ]+([+-][0-9]+)[ ]*$', '\\1') %>%
          as.integer()
      }
    } else {
      tmp <- page.line %>%
        stringr::str_replace('.*[ +-]([0-9]+)([ ]+-)?$', '\\1') %>%
        as.integer()
    }
  } else {
    tmp <- page.line %>%
      stringr::str_replace(' ?([0-9]+).*', '\\1') %>%
      as.integer()
  }
  return(tmp)
}

# (_)_ __  / _| ___
# | | '_ \| |_ / _ \
# | | | | |  _| (_) |
# |_|_| |_|_|  \___/
#
#' Extract information from latest report of DGS from 2020/08/17
#'
#' @param index index of report to extract (1 is the latest)
#' @param only.date filter out if date isn't the same (NULL for keep whatever report it is)
#'
#' @return list with information that can be extracted
#' @export
#'
#' @examples
#' extract_info(index = 4) # keep only if it's from today
extract_info2 <- function(only.date = NULL, index = 1) {
  report.pdf <- download.report(only.date, index)

  info <- tibble::tibble()
  if (!is.null(report.pdf)) {

    if (TRUE) {
      report.text <- report.pdf$data %>%
        pdftools::pdf_data() %>%
        sapply(FUN = function(my.input) {
          my.input %>%
            dplyr::arrange(y,x) %>%
            dplyr::select(text, space) %>%
            dplyr::mutate(space = dplyr::if_else(space, ' ', '\n'),
                          string = paste0(text, space)) %>%
            purrr::pluck(3) %>%
            paste(sep = '', collapse = '')
        })

    } else {
      report.text <- report.pdf$data %>% pdftools::pdf_text()
    }

    document <- stringr::str_split(report.text, '\n') %>%
      sapply(function(ix) {stringr::str_trim(gsub('  [ ]+', ' ', ix))})

    page1 <- NULL
    tryCatch({(page1 <- document[,1])}, error = function(err) {})
    if (is.null(page1)) {
      page1 <- document[[1]]
    }

    page1 <- page1[page1 != ""]

    info <- dplyr::bind_cols(country = 'Portugal',
                             date = report.pdf$date,
                             extract_cases2(page1),
                             extract_deaths2(page1),
                             extract_recoveries2(page1),
                             extract_tests(page1),
                             extract_hospitalized2(page1))
  }
  info.out <- info %>% dplyr::filter(!is.na(country))
  return(info.out)
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
    stringr::str_replace('.*([0-9][0-9])/([0-9][0-9])/([0-9][0-9][0-9][0-9])', '\\3-\\2-\\1') %>%
    anytime::anydate(tz = '%d/%m/%Y')

  my.date <- dates.raw %>% purrr::pluck(index)

  if (!is.null(only.date)) {
    only.date <- anytime::anydate(only.date)
  }
  if (!is.null(only.date) && difftime(my.date, only.date, units = 'days') != 0) {
    return(NULL)
  }

  lines <- rvest::html_nodes(webpage, '#MBV_Main .single_main .single_content ul li')

  report.url <- lines[[index]] %>%
    rvest::html_nodes('a') %>%
    rvest::html_attr('href') %>%
    purrr::compact() %>%
    purrr::pluck(1) %>%
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
    for (x in seq_along(what.to.search)) {
      cat('Report being downloaded:',  paste0('(', x , '/', length(what.to.search),')'), '--', format.Date(dates.valid[what.to.search[x]]), '\n')
      index <- what.to.search[x]
      if (dates.valid[what.to.search[x]] >= '2020-08-17') {
        day <- extract_info2(NULL, index)
      } else {
        day <- extract_info(NULL, index)
      }
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

  anytime::addFormats('%d/%m/%Y')

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
           popData2019 = eu.data$data %>% dplyr::pull(popData2019) %>% purrr::pluck(1),
           continentExp = 'Europe') %>%
    #
    dplyr::filter(date %in% tseq) %>%
    dplyr::mutate(date = date + 1,
           day = lubridate::day(date),
           month = lubridate::month(date),
           year = lubridate::year(date),
           dateRep = format(date, '%d/%m/%Y')) %>%
    #
    dplyr::select(dateRep, day, month, year, cases, deaths, countriesAndTerritories, geoId, countryterritoryCode, popData2019, continentExp) %>%
    #
    dplyr::bind_rows(eu.data$data)

  return(covid19.pt.new)
}

#' Merge EU CDC and PT DGS data (all in one)
#'
#' @return updated data
#' @export
download.updated.pt <- function() {
  dgs.pt.new <- download_all_reports() %>% distinct() %>% arrange(desc(date))

  covid19.pt.new <- merge_eu.cdc(dgs.pt.new) %>% arrange(-year, -month, -day)

  return(list(dgs.pt = dgs.pt.new, cdc.eu = covid19.pt.new))
}
