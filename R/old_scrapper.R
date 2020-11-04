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
