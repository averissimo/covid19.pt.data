#' Builds labels for plots
#'
#' @param input table
#' @param order.by  what should be ordered (to show max, min and current)
#' @param name name of grouping variable
#' @param digits digits on numbers
#'
#' @return
build.labels <- function(input, order.by, name, digits = 2) {
  my.format <- function(val) {
    val %>%
      round(digits = digits) %>%
      format(big.mark = ',', trim = TRUE) %>%
      return()
  }

  tmp <- input %>%
    dplyr::arrange(desc(date), desc(!!as.name(order.by))) %>%
    dplyr::mutate(state.data = !!as.name(name),
                  state.data.order = !!as.name(order.by),
                  state.data.val.max = max(!!as.name(order.by), na.rm = TRUE),
                  state.data.val.last = first(!!as.name(order.by), default = 0)) %>%
    dplyr::mutate(state.data.label = paste0(state.data,
                                            ' (max: ',
                                            max(!!as.name(order.by), na.rm = TRUE) %>% my.format,
                                            ' min: ',
                                            min(!!as.name(order.by), na.rm = TRUE) %>% my.format,
                                            ' last: ',
                                            state.data.val.last %>% my.format,
                                            ')'
                                            ))

  tmp %>%
    dplyr::mutate(label = dplyr::if_else(state.data.order == max(state.data.order, na.rm = TRUE), state.data.label, NA_character_),
                  state.data = factor(state.data,
                                      levels = .$state.data %>% unique)) %>%
    dplyr::arrange(label, desc(date)) %>%
    dplyr::mutate(label = if_else(date == first(date), label, NA_character_)) %>%
    dplyr::select(-state.data, -state.data.label, -state.data.val.last, -state.data.val.max, -state.data.order) %>%
    dplyr::arrange(desc(date)) %>%
    return()
}
