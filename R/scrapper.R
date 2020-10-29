#' Extract number of tests from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_tests <- function(page) {
  suppressWarnings(first.try <- extract_generic(page, 'Total de casos', 1))
  if (is.na(first.try)) {
    first.try <- extract_generic(page, 'suspeitos [(]desde 1 de janeiro', 1)
  }
  return(tibble::tibble(tests = first.try))
}

extract_hospitalized <- function(page) {
  val <- extract_generic.two(page, 'N\u00DAMERO DE CASOS N\u00DAMERO DE CASOS', 1)
  if (is.list(val)) {
    names(val) <- c('hospitalized', 'in.icu')
    return(val %>% dplyr::bind_cols())

  }
  tibble(hospitalized = NA, in.icu = NA) %>%
    return()
}

extract_ages <- function(page, name) {
  age.ranges <- c('00-09 anos', '10-19 anos', '20-29 anos', '30-39 anos',
                  '40-49 anos', '50-59 anos', '60-69 anos', '70-79 anos',
                  '80\\+')

  lapply(age.ranges, function(ix) {
    val <- extract_generic.two(page, ix, 1)
    ix.name <- stringr::str_replace(ix, ' anos', '') %>%
      stringr::str_replace('\\\\', '')
    if (is.list(val)) {
      names(val) <- c('{name}_m_{ix.name}' %>% glue::glue(), '{name}_w_{ix.name}' %>% glue::glue())
    }
    return(val)
  }) %>%
    dplyr::bind_cols() %>%
      return()
}

extract_ages2 <- function(page, pattern) {
  return(tibble::tibble())
}

#' Extract number of cases from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_cases <- function(page) {
  extract_generic(page, 'Total de casos', 2) %>%
    tibble::tibble(confirmed = .) %>%
    return()
}

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

#' Extract number of hospitalized from report (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_hospitalized2 <- function(page) {
  dplyr::bind_cols(extract_generic2(page, 'hospitalized', 1, 1) %>%
                     tibble::tibble(hospitalized = .),
                   extract_generic2(page, 'icu', 1, 1, TRUE) %>%
                     tibble::tibble(in.icu = .)) %>%
    return()
}

#' Extract number of cases from report (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_cases2 <- function(page) {
  return(extract_generic2(page, 'cases', 1, 1) %>% tibble::tibble(confirmed = .))
}

#' Extract number of deaths from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_deaths <- function(page) {
  extract_generic(page, '\u00D3bitos', 1)%>%
    tibble::tibble(deaths = .) %>%
    return()
}

#' Extract number of deaths from report  (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_deaths2 <- function(page) {
  tmp <- extract_generic2(page, 'deaths', 1, 2) %>% tibble::tibble(deaths = .)

  if (is.na(tmp[1,1])) {
    tmp <- extract_generic2(page, 'deaths', 1, 3) %>% tibble::tibble(deaths = .)
  }
  return(tmp)
}

#' Extract number of recoveries from report
#'
#' @param page page strings from document
#'
#' @return a number
extract_recoveries <- function(page) {
  extract_generic(page, 'Casos recuperados', 1) %>%
    tibble::tibble(recovered = .) %>%
    return()
}

#' Extract number of recoveries from report (from 2020/08/17)
#'
#' @param page page strings from document
#'
#' @return a number
extract_recoveries2 <- function(page) {
  extract_generic2(page, 'recoveries', 1, 1) %>%
    tibble::tibble(recovered = .) %>%
    return()
}

#' Generic extractor
#'
#' @param page page strings from document
#' @param pattern pattern to look for
#' @param interesting.hit which one to choose
#'
#' @return a number
extract_generic.two <- function(page, pattern, interesting.hit) {

  hits.ix <- stringr::str_which(page, pattern)

  hits <- page[hits.ix]

  hits.my <- hits[interesting.hit] %>% stringi::stri_enc_toascii() %>%
    gsub('\032', '', .)

  pattern2 <- stringi::stri_enc_toascii(pattern) %>% gsub('\032', '', .)

  if (grepl('{pattern2}$' %>% glue::glue(), hits.my, ignore.case = TRUE)) {
    # outliers
    if (pattern == '20-29 anos' && page[c(hits.ix + 1)] == 'Chile (2) Pol\u00F3nia (1)') {
        hits.ix <- hits.ix+1
    } else if (pattern == '60-69 anos' && page[c(hits.ix+1)] == 'Emirados \u00C1rabes Unidos (43) Su\u00E9cia (1)') {
      hits.ix <- hits.ix+1
    }

    tmp <- page[c(hits.ix + 1)][[interesting.hit]] %>%
      stringr::str_replace('([0-9]+)[ ]+([0-9]+).*', '\\1\t\\2')

    tmp.regexec <- regexec('([0-9]+)[\t ]+([0-9]+)' %>% glue::glue(), tmp)
    tmp.ret <- regmatches(tmp, tmp.regexec)[[1]]

    retValue <- NA
    tryCatch({
        retValue <- list(one = as.integer(tmp.ret[2]), two = as.integer(tmp.ret[3]))
    })
    return(retValue)
  } else {
    tmp.regexec <- regexec('{pattern2}[ ]+([0-9]+)[ ]+([0-9]+)' %>% glue::glue(), hits.my)
    tmp <- regmatches(hits.my, tmp.regexec)[[1]]


    retValue <- NA
    tryCatch({
      retValue <- list(one = as.integer(tmp[2]), two = as.integer(tmp[3]))
    })
    return(retValue)
  }
}

#' Generic extractor
#'
#' @param page page strings from document
#' @param pattern pattern to look for
#' @param interesting.hit which one to choose
#'
#' @return a number
extract_generic <- function(page, pattern, interesting.hit, add.me = 0) {

  hits.ix <- stringr::str_which(page, pattern)

  hits <- page[hits.ix + add.me]

  hits.my <- hits[interesting.hit] %>% stringi::stri_enc_toascii() %>%
    gsub('\032', '', .)

  if (add.me > 0) {
    tmp <- page[c(hits.ix + 1)][[interesting.hit]] %>%
      stringr::str_replace(' ', '') %>%
      stringr::str_replace('([0-9]+).*', '\\1') %>%
      as.integer()
    return(tmp)
  }

  pattern2 <- stringi::stri_enc_toascii(pattern) %>% gsub('\032', '', .)

  if (grepl('{pattern2}$' %>% glue::glue(), hits.my, ignore.case = TRUE)) {
    tmp <- page[c(hits.ix + 1)][[interesting.hit]] %>%
      stringr::str_replace('([0-9]+).*', '\\1')

    retValue <- NA
    tryCatch({
      retValue <- as.integer(tmp)
    })
    return(retValue)
  } else {
    tmp.regexec <- regexec('{pattern2}[ ]+([0-9]*)' %>% glue::glue(), hits.my)
    tmp <- regmatches(hits.my, tmp.regexec)[[1]]

    retValue <- NA
    tryCatch({
      retValue <- as.integer(tmp[2])
    })
    return(retValue)
  }
}

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

  hits <- page[hits.ix + add.me]

  if (pattern.name == 'icu' && grepl('^[0-9]+$', hits)) {
    add.me <- 2
    hits <- page[hits.ix + add.me]
  }

  hits.my <- hits[interesting.hit] %>% stringi::stri_enc_toascii() %>%
    gsub('\032', '', .)

  if (hits.my == 'INTERNAMENTO INTERNAMENTO') {
    return(extract_generic2(page, pattern, interesting.hit, add.me - 1, last))
  }

  page.line <- page[c(hits.ix + add.me)][[interesting.hit]]

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

#' Extract information from latest report of DGS
#'
#' @param index index of report to extract (1 is the latest)
#' @param only.date filter out if date isn't the same (NULL for keep whatever report it is)
#'
#' @return list with information that can be extracted
#' @export
#'
#' @examples
#' extract_info(index = 4) # keep only if it's from today
extract_info <- function(only.date = NULL, index = 1) {
  report.pdf <- download.report(only.date, index)

  info <- tibble::tibble()
  if (!is.null(report.pdf)) {
    report.text <- report.pdf$data %>% pdftools::pdf_text()

    document <- stringr::str_split(report.text, '\n') %>%
      sapply(function(ix) {stringr::str_trim(gsub('  [ ]+', ' ', ix))})
    page1 <- document[[1]]
    page2 <- document[[2]]
    page4 <- document[[4]]

    info <- dplyr::bind_cols(country = 'Portugal',
              date = report.pdf$date,
              extract_cases(page1),
              extract_deaths(page1),
              extract_recoveries(page1),
              extract_tests(page1),
              extract_hospitalized(page4),
              extract_ages(page2, 'confirmed'),
              extract_ages(page4, 'death'))
  }

  return(info %>% dplyr::filter(!is.na(country)))
}

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
    report.text <- report.pdf$data %>% pdftools::pdf_text()

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
