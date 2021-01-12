
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
  dplyr::bind_cols(extract_generic2(page, 'hospitalized') %>% tibble::tibble(hospitalized = .),
                   extract_generic2(page, 'icu') %>%  tibble::tibble(in.icu = .)) %>%
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
  return(extract_generic2(page, 'cases') %>% tibble::tibble(confirmed = .))
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
  tmp <- extract_generic2(page, 'deaths') %>% tibble::tibble(deaths = .)

  if (is.na(tmp[1,1])) {
    tmp <- extract_generic2(page, 'deaths', add.me = 3) %>% tibble::tibble(deaths = .)
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
  extract_generic2(page, 'recoveries') %>% tibble::tibble(recovered = .) %>%
    return()
}

extract_generic2_no_recursive <- function(...) {
  return(extract_generic2(..., allow.recur.force = FALSE))
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
extract_generic2 <- function(page, pattern.name, interesting.hit.force = NULL, add.me.force = NULL, last.force = NULL, allow.recur.force = NULL) {

  pattern.list <- my.pattern(pattern.name)

  pattern <- pattern.list$pattern
  if (!exists('interesting.hit.force') || is.null(interesting.hit.force)) {
    interesting.hit <- pattern.list$interesting.hits
  } else {
    interesting.hit <- interesting.hit.force
  }

  if (!exists('add.me.force') || is.null(add.me.force)) {
    add.me <- pattern.list$add.me
  } else {
    add.me <- add.me.force
  }

  if (!exists('last.force') || is.null(last.force)) {
    last <- pattern.list$last
  } else {
    last <- last.force
  }

  if (!exists('allow.recur.force') || is.null(allow.recur.force)) {
    allow.recur <- TRUE
  } else {
    allow.recur <- allow.recur.force
  }

  hits.ix <- stringr::str_which(page, pattern)

  page.sub <- page[seq(from = hits.ix, to = length(page))]
  hits <- page.sub[1 + add.me]

  if (allow.recur) {
    if (pattern.name %in% c('deaths') && grepl('^[0-9]+$', hits)) {
      death.pattern <- '^[0-9]+( [0-9]+)? ([+]|[-])( [0-9]+( [0-9]+)?)?$'
      if (grepl(death.pattern, page.sub[1 + add.me - 1])) {
        #
        return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me - 1))
      } else if (grepl(death.pattern, page.sub[1 + add.me + 1])) {
        #
        return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me + 1))
      } else {
        # it will fail! shrugs
      }
    } else if (pattern.name %in% c('deaths') && grepl('^([ ]*)?[+-]([ ]*)?[0-9]+', hits)) {
      if (grepl('^\\+ [0-9]+( [0-9]+)?$', hits)) {
        hits = gsub('^\\+ ', '', hits)
      } else if (page.sub[3] == '+') {
        return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me + 1))
      } else {
        #
        return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me - 1))
      }
    } else if (pattern.name %in% c('icu') && grepl('^([ ]*)?[+-]([ ]*)?[0-9]+', hits)) {
      #
      return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me + 1))
    } else if (pattern.name %in% c('icu') && grepl('^[+]$', hits)) {
      #
      return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me + 2))
    } else if (pattern.name %in% c('hospitalized') && hits == '+') {
      #
      return(extract_generic2_no_recursive(page, pattern.name, add.me.force = add.me + 2))
    }
  }

  hits.my <- hits[interesting.hit] %>% stringi::stri_enc_toascii() %>%
    gsub('\032', '', .)

  if (hits.my == 'INTERNAMENTO INTERNAMENTO') {
    return(extract_generic2(page, pattern, interesting.hit, add.me - 1, last))
  }

  # page.line <- page[c(hits.ix + add.me)][[interesting.hit]]

  return(extract.page.line(pattern.name, hits, last))
}
