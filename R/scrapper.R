

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
  patterns <- list(hospitalized = list(pattern = 'DISTRIBUI\u00C7\u00C3O DOS CASOS EM INTERNAMENTO', interesting.hits = 1, add.me = 1, last = FALSE),
                   icu = list(pattern = 'DISTRIBUI\u00C7\u00C3O DOS CASOS EM INTERNAMENTO', interesting.hits = 1, add.me = 2, last = FALSE),
                   cases = list(pattern = 'EM VIGIL\u00C2NCIA', interesting.hits = 1, add.me = 1 , last = FALSE),
                   deaths = list(pattern = 'RECUPERADOS', interesting.hits = 1, add.me = 6, last = FALSE),
                   recoveries = list(pattern = 'ATIVOS', interesting.hits = 1, add.me = 1, last = FALSE))
  return(patterns[[index]])
}

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
my.pattern_2020_12_22 <- function(index) {
  patterns <- list(hospitalized = list(xmin = 38, xmax = 54, ymin = 696, ymax = 699),
                   icu          = list(xmin = 156, xmax = 191, ymin = 698, ymax = 698),
                   cases        = list(xmin = 30, xmax = 66, ymin = 467, ymax = 481),
                   deaths       = list(xmin = 36, xmax = 62, ymin = 340, ymax = 346),
                   recoveries   = list(xmin = 30, xmax = 66, ymin = 273, ymax = 276))
  return(patterns[[index]])
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
#' @examples
#' extract_generic_2020_12_22(page1, 'cases')
#' extract_generic_2020_12_22(page1, 'deaths')
#' extract_generic_2020_12_22(page1, 'recoveries')
#' extract_generic_2020_12_22(page1, 'hospitalized')
#' extract_generic_2020_12_22(page1, 'icu')
extract_generic_2020_12_22 <- function(page, pattern.name, pattern.list.override = NULL) {

  if (!exists('pattern.list.override') || is.null(pattern.list.override)) {
    pattern.list <- my.pattern_2020_12_22(pattern.name)
  } else {
    pattern.list <- pattern.list.override
  }

  pattern.list$xmin <- pattern.list$xmin - 2
  pattern.list$xmax <- pattern.list$xmax + 2
  pattern.list$ymin <- pattern.list$ymin - 2
  pattern.list$ymax <- pattern.list$ymax + 2

  page.line <- page %>%
    dplyr::filter(x >= pattern.list$xmin & x <= pattern.list$xmax & y >= pattern.list$ymin & y <= pattern.list$ymax) %>%
    dplyr::pull(text) %>%
    paste(collapse = ' ')

  return(extract.page.line.simple(page.line))
}

extract.page.line.simple <- function(page.line, last = FALSE) {
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

  return(extract.page.line.simple(page.line, last))
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
#' extract_info2(index = 11) # keep only if it's from today
#' index <- 15
#' extract_info2(index = index) # keep only if it's from today
extract_info2 <- function(only.date = NULL, index = 1) {
  report.pdf <- download.report(only.date, index)

  info <- tibble::tibble()

  esri <- get_json_esri2()
  ages <- get_ages(esri)
  if (!is.null(report.pdf)) {

    if (report.pdf$date < "2020-12-22") {
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

      document <- stringr::str_split(report.text, '\n') %>%
        sapply(function(ix) {stringr::str_trim(gsub('  [ ]+', ' ', ix))})

      page1 <- NULL
      tryCatch({(page1 <- document[,1])}, error = function(err) {})
      if (is.null(page1)) {
        page1 <- document[[1]]
      }

      page1 <- page1[!grepl('^([+-])?$', page1)]

      info <- dplyr::bind_cols(country = 'Portugal',
                               date = report.pdf$date,
                               extract_cases2(page1),
                               extract_deaths2(page1),
                               extract_recoveries2(page1),
                               extract_tests(page1),
                               extract_hospitalized2(page1))
    } else {
      report.text <- report.pdf$data %>% pdftools::pdf_data()

      page1 <- report.text[[1]]

      info <- dplyr::bind_cols(country = 'Portugal',
                               date = report.pdf$date,
                               extract_generic_2020_12_22(page1, 'cases') %>% tibble::tibble(confirmed = .),
                               extract_generic_2020_12_22(page1, 'deaths') %>% tibble::tibble(deaths = .),
                               extract_generic_2020_12_22(page1, 'recoveries') %>% tibble::tibble(recovered = .),
                               tibble::tibble(tests = NA_integer_),
                               extract_generic_2020_12_22(page1, 'hospitalized') %>% tibble::tibble(hospitalized = .),
                               extract_generic_2020_12_22(page1, 'icu') %>% tibble::tibble(in.icu = .))
    }


    if (ages %>% dplyr::pull('date') %>%  purrr::pluck(1) == report.pdf$date) {
      message('Updating age data from esri..')
      info <- dplyr::bind_cols(info, ages %>% dplyr::select(-date))
    }

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

  what.to.search <- which(dates.valid %in% purrr::discard(dates.valid, dates.valid %in% (dgs.pt %>% dplyr::filter(!is.na(confirmed)) %>% dplyr::pull(date))))

  dgs.pt.new <- dgs.pt %>% arrange(desc(date))
  if (length(what.to.search) > 0) {
    for (x in seq_along(what.to.search)) {
      cat('Report being downloaded:',  paste0('(', x , '/', length(what.to.search),')'), '--', format.Date(dates.valid[what.to.search[x]]), '\n')
      index <- what.to.search[x]
      if (dates.valid[what.to.search[x]] >= '2020-08-17') {
        day <- extract_info2(NULL, index)
      } else {
        day <- extract_info(NULL, index)
      }
      if (day$date %in% (dgs.pt %>% dplyr::pull(date))) {
        dgs.pt.new <- dplyr::rows_update(dgs.pt.new, day, by = c('date', 'country'))
      } else {
        dgs.pt.new <- dgs.pt.new %>% dplyr::bind_rows(day) %>% dplyr::arrange(desc(date))
      }
    }
  }

  # will force the esri download and join per date (just in case esri is behind schedule when updating)
  ages <- get_json_esri2() %>% get_ages()
  max.ages.date <- ages %>% dplyr::pull(date) %>% purrr::pluck(1)
  if (max.ages.date >= dgs.pt %>% dplyr::pull(date) %>% max()) {
    message('Updating age data from esri...')
  }
  if (dgs.pt.new %>% dplyr::filter(date == max.ages.date) %>% nrow == 0) {
    dgs.pt.new <- dgs.pt.new %>% tibble::add_row(country = 'Portugal', date = max.ages.date) %>%  dplyr::arrange(desc(date))
  }
  dgs.pt.new <- dplyr::rows_update(dgs.pt.new, ages, by = 'date')

  vaccines <- get_vaccines()
  max.vaccines.date <- vaccines %>% dplyr::pull(date) %>% purrr::pluck(1)
  if (max.vaccines.date >= dgs.pt %>% dplyr::pull(date) %>% max()) {
    message('Updating vaccines data from esri...')
  }

  if (!all(c('first_vaccine', 'second_vaccine') %in% colnames(dgs.pt.new))) {
    dgs.pt.new <- dgs.pt.new %>% tibble::add_column(first_vaccine = NA_integer_, second_vaccine = NA_integer_)
  }

  if (dgs.pt.new %>% dplyr::filter(date == max.vaccines.date) %>% nrow == 0) {
    dgs.pt.new <- dgs.pt.new %>% tibble::add_row(country = 'Portugal', date = max.vaccines.date) %>%  dplyr::arrange(desc(date))
  }

  dgs.pt.new <- dplyr::rows_update(dgs.pt.new, vaccines, by = 'date')

  return(dgs.pt.new)
}

#' Merge EU CDC and PT DGS data (all in one)
#'
#' @return updated data
#' @export
download.updated.pt <- function() {
  dgs.pt.new <- download_all_reports() %>% distinct() %>% arrange(desc(date))

  return(list(dgs.pt = dgs.pt.new))
}
