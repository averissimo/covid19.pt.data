
#' Get Age data for demographics plots
#'
#' @param input.data a dgs.pt tibble from this packaged
#'
#' @return a demographics ready tibble
#' @export
#'
#' @examples
#' get.age.data(covid19.pt.data::dgs.pt)
get.age.data <- function(input.data) {
  return(input.data %>%
    reshape2::melt(id.vars = c('country', 'date'), variable.name = 'type') %>%
    group_by(country, type) %>%
    filter(grepl('(confirmed_|death_)', type)) %>%
    tidyr::fill(value, .direction = 'up') %>%
    mutate(value = if_else(!is.na(value), value, as.integer(0))) %>%
    arrange(date) %>%
    ungroup() %>%
    mutate(gender = if_else(grepl('.*_m_*', type), 'men', 'women'),
           age_type = if_else(grepl('confirmed_', type), 'confirmed', 'death'),
           type = gsub('.*_(m|w)_', '', type),
           value = if_else(gender == 'men', value * -1, value %>% as.double)))
}

#' Get age data tibble with readable labels
#'
#' @param input.data and output of get.age.data()
#' @param date.ix date to filter through
#'
#' @return tibble with readable labels
#' @export
get.age.data.with.labels <- function(input.data, date.ix) {
  return(input.data %>%
    filter(date == date.ix & value != 0) %>%
    select(type, gender, age_type, value) %>%
    reshape2::dcast(type + gender ~ age_type, mean, fill = 0) %>%
    mutate(confirmed = if('confirmed' %in% colnames(.)) confirmed else 0,
           death = if('death' %in% colnames(.)) death else 0) %>%
    mutate(label.confirmed = if_else(confirmed != 0, format(abs(confirmed), big.mark = ',', trim = TRUE), NA_character_),
           label.death = if_else(death != 0 & confirmed != 0,
                                 paste0(format(abs(death), big.mark = ',', trim = TRUE),
                                        ' (',
                                        scales::percent(abs(death/confirmed), accuracy = 0.01, big.mark = ','),
                                        ')'),
                                 if_else(confirmed == 0, format(abs(death), big.mark = ',', trim = TRUE), NA_character_))))
}

#' Title
#'
#' @param input.data output of get.age.data
#' @param input.data.with.labels output of get.age.data.with.labels
#' @param date.ix date to filter through
#'
#' @return
#' @export
get.age.new.data <- function(input.data, input.data.with.labels, date.ix) {
  age.data.all.new <- input.data %>%
    group_by(country, type, gender, age_type) %>%
    arrange(desc(date)) %>%
    mutate(value = zoo::rollapply(value, 2, function(ix) { if(length(ix) <= 1) { return(ix) } else { ix[1] - sum(ix[-1]) } }, fill = c(0, 0, 0), align = 'left', partial = TRUE)) %>%
    filter(value != 0) %>%
    filter(date == date.ix & value != 0) %>%
    ungroup() %>%
    select(type, gender, age_type, value) %>%
    group_by(type, gender, age_type) %>%
    reshape2::dcast(type + gender ~ age_type, mean, fill = 0) %>%
    mutate(confirmed = if('confirmed' %in% colnames(.)) confirmed else 0,
           death = if('death' %in% colnames(.)) death else 0) %>%
    mutate(label.confirmed = if_else(confirmed != 0, format(abs(confirmed), big.mark = ',', trim = TRUE), NA_character_),
           label.death = if_else(death != 0,
                                 if_else(is.na(confirmed) | confirmed == 0, format(abs(death), big.mark = ',', trim = TRUE),
                                         paste0(format(abs(death), big.mark = ',', trim = TRUE))),
                                 NA_character_))

  age.data.all.new <- age.data.all.new %>%
    inner_join(input.data.with.labels %>% select(-label.confirmed, -label.death), by = c('type', 'gender'), suffix = c('', '.all')) %>%
    mutate(predicted.death = if_else(death.all != 0,
                                     abs(confirmed * death.all / confirmed.all),
                                     0)) %>%
    mutate(label.confirmed = if_else(predicted.death == 0,
                                     label.confirmed,
                                     if_else(predicted.death < 0.1,
                                             paste0(label.confirmed, ' (<0.1)'),
                                             paste0(label.confirmed,
                                                    ' (',
                                                    format(round(predicted.death, digits = 1), big.mark = ','),
                                                    ')')))) %>%
    select(-confirmed.all, -death.all)

  return(age.data.all.new)
}

#' Get demographics plots for all confirmed cases and deaths
#'
#' @param input.data output of get.age.data.with.labels()
#' @param date.ix date to filter to
#'
#' @return list with 2 plots
#' @export
get.plot.for.all <- function(input.data, date.ix) {
  my.plots <- list()

  confirmed.max <- input.data %>%  pull(confirmed) %>% max
  death.max <- input.data %>% pull(death) %>% max

  label.death <- list(men = input.data %>% filter(gender == 'men') %>% pull(death) %>% sum %>% abs,
                      women = input.data %>% filter(gender == 'women') %>% pull(death) %>% sum %>% abs)

  label.confirmed <- list(men = input.data %>% filter(gender == 'men') %>% pull(confirmed) %>% sum %>% abs,
                          women = input.data %>% filter(gender == 'women') %>% pull(confirmed) %>% sum %>% abs)
  #
  #
  #
  confirmed.labs <- list(title = 'Total number of Confirmed cases ({format(label.confirmed$women + label.confirmed$men, big.mark = ",", trim = TRUE)}) by age group' %>% glue,
                         subtitle = 'predicted deaths for age groups shown in parenthesis' %>% glue,
                         caption = '',
                         y = 'Age group',
                         x = 'Confirmed Cases')
  confirmed.status <- sum(abs(input.data$confirmed)) != dgs.pt %>% filter(date == date.ix) %>% pull(confirmed) %>% sum
  if (confirmed.status) {
    confirmed.labs$title <- 'ERROR on DGS data for demographics'
    confirmed.labs$subtitle <- ' for total confirmed cases ({format(label.confirmed$women + label.confirmed$men, big.mark = ",", trim = TRUE)} not {format(dgs.pt %>% filter(date == date.ix) %>% pull(confirmed) %>% sum, big.mark = ",", trim = TRUE)})' %>% glue
    confirmed.labs$caption <- ''
    input.data <- input.data %>% mutate(confirmed = 0,
                                        label.death = gsub(' [(].*[)]', '', label.death),
                                        label.confirmed = NA_character_,
                                        label.confirmed = if_else(type == '30-39', 'ERROR on DGS data', label.confirmed))
  }
  #
  death.labs <- list(title = 'Total number of Deaths ({format(label.death$women + label.death$men, big.mark = ",", trim = TRUE)}) by age group' %>% glue,
                     subtitle = 'Percentage shows the mortality rate',
                     caption = 'Mortality rate = \'deaths\' / \'confirmed cases\'',
                     y = 'Age group',
                     x = 'Deaths')
  death.status <- sum(abs(input.data$death)) != dgs.pt %>% filter(date == date.ix) %>% pull(deaths) %>% sum
  if (death.status) {
    death.labs$title <- 'ERROR on DGS data for demographics'
    confirmed.labs$subtitle <- ' for total deaths ({format(label.death$women + label.death$men, big.mark = ",", trim = TRUE)} not {format(dgs.pt %>% filter(date == date.ix) %>% pull(deaths) %>% sum}, big.mark = ",", trim = TRUE))' %>% glue
    death.labs$caption <- ''
    input.data <- input.data %>% mutate(death = 0,
                                        label.death = NA_character_,
                                        label.death = if_else(type == '30-39', 'ERROR on DGS data', label.death))
  }
  #
  #
  #
  #
  #
  my.plots$confirmed <- input.data %>%
          ggplot(aes(x = confirmed, y = type, fill = gender)) +
          geom_bar(stat = 'identity') +
          ggrepel::geom_label_repel(aes(label = label.confirmed, fill = gender), color = 'white', direction = 'x', seed = 1985, size = 3.5,
                                    nudge_x = ifelse(input.data$gender == 'men', -1, 1),
                                    show.legend = FALSE,
                                    na.rm = TRUE) +
          expand_limits(x =c(-1 * confirmed.max, confirmed.max)) +
          scale_x_continuous('', labels = function(ix) { return(abs(ix)) }) +
          scale_y_discrete(limits = age.data$type %>% unique %>% sort) +
          scale_fill_viridis_d('', end = .8, labels = function(ix) { if (confirmed.status) return(ix) else return(paste0(ix, ': ', format(label.confirmed[ix], big.mark = ',', trim = TRUE), ''))}) +
          labs(title = confirmed.labs$title,
               subtitle = confirmed.labs$subtitle,
               caption = confirmed.labs$captions,
               y = confirmed.labs$y,
               x = confirmed.labs$x) +
          theme_minimal() +
          theme(legend.position = 'bottom')

  my.plots$deaths <- input.data %>%
          ggplot(aes(x = death, y = type, fill = gender)) +
          geom_bar(stat = 'identity') +
          ggrepel::geom_label_repel(aes(label = label.death, fill = gender), color = 'white', direction = 'x', seed = 1985, size = 3.5,
                                    nudge_x = ifelse(input.data %>% filter(!is.na(label.death)) %>% pull(gender) == 'men', -1, 1),
                                    show.legend = FALSE,
                                    na.rm = TRUE) +
          expand_limits(x =c(-1 * death.max, death.max)) +
          scale_x_continuous('', labels = function(ix) { return(abs(ix)) }) +
          scale_fill_viridis_d('', end = .8, labels = function(ix) { if (death.status) return(ix) else return(paste0(ix, ': ', format(label.death[ix], big.mark = ',', trim = TRUE), ''))}) +
          labs(title = death.labs$title,
               subtitle = death.labs$subtitle,
               caption = death.labs$caption,
               y = death.labs$x,
               x = death.labs$y) +
          theme_minimal() +
          theme(legend.position = 'bottom')
  return(my.plots)
}

#' Get demographics plots for new confirmed cases and deaths in a given day
#'
#' @param input.data output of get.age.new.data()
#' @param date.ix date to filter to
#'
#' @return list with 2 plots
#' @export
get.plot.for.new <- function(input.data, date.ix) {
  my.plots <- list()

  confirmed.max <- input.data %>%  pull(confirmed) %>% max
  death.max     <- input.data %>% pull(death) %>% max

  label.death <- list(men = input.data %>% filter(gender == 'men') %>% pull(death) %>% sum %>% abs,
                      women = input.data %>% filter(gender == 'women') %>% pull(death) %>% sum %>% abs)

  label.predicted <- list(men = input.data %>% filter(gender == 'men') %>% pull(predicted.death) %>% sum %>% abs %>% round(digits = 1),
                          women = input.data %>% filter(gender == 'women') %>% pull(predicted.death) %>% sum %>% abs %>% round(digits = 1))

  label.confirmed <- list(men = input.data %>% filter(gender == 'men') %>% pull(confirmed) %>% sum %>% abs,
                          women = input.data %>% filter(gender == 'women') %>% pull(confirmed) %>% sum %>% abs)
  #
  #
  #
  confirmed.labs <- list(title = 'New {format(label.confirmed$women + label.confirmed$men, big.mark = ",", trim = TRUE)} confirmed cases from {format(date.ix, "%B %d")}' %>% glue,
                         subtitle = 'predicted deaths for age groups shown in parenthesis' %>% glue,
                         caption = 'Prediction based on current \'mortality rate\' ({sum(input.data$predicted.death) %>% round(digits = 1)} deaths for {format(date.ix, "%B %d")})' %>% glue,
                         y = 'Age group',
                         x = 'Confirmed Cases')
  confirmed.status <- sum(abs(input.data$confirmed)) != covid19.pt %>% filter(dateRep == strftime(anydate(date.ix)+1, '%d/%m/%Y')) %>% pull(cases) %>% sum
  if (confirmed.status) {
    confirmed.labs$title <- 'ERROR on DGS data for demographics'
    confirmed.labs$subtitle <- ' for new confirmed cases ({format(label.confirmed$women + label.confirmed$men, big.mark = ",", trim = TRUE)} not {format(covid19.pt %>% filter(dateRep == strftime(anydate(date.ix)+1, \'%d/%m/%Y\')) %>% pull(cases) %>% sum, big.mark = ",", trim = TRUE)})' %>% glue
    confirmed.labs$caption <- ''
    input.data <- input.data %>% mutate(confirmed = 0,
                                        label.death = gsub(' [(].*[)]', '', label.death),
                                        label.confirmed = NA_character_,
                                        label.confirmed = if_else(type == '30-39', 'ERROR on DGS data', label.confirmed))
    if (input.data %>% filter(type == '30-39') %>% nrow == 0) {
      input.data <- input.data %>% bind_rows(list(type = '30-39', gender = 'men' , death = 0, confirmed = 0, label.confirmed = 'ERROR on DGS data', label.death = NA_character_, predicted.death = 0),
                               list(type = '30-39', gender = 'women' , death = 0, confirmed = 0, label.confirmed = 'ERROR on DGS data', label.death = NA_character_, predicted.death = 0),)
    }
  }
  #
  death.labs <- list(title = 'New {format(label.death$women + label.death$men, big.mark = ",", trim = TRUE)} deaths from {format(date.ix, "%B %d")}' %>% glue,
                     subtitle = '',
                     caption = '',
                     y = 'Age group',
                     x = 'Deaths')
  death.status <- sum(abs(input.data$death)) != covid19.pt %>% filter(dateRep == strftime(anydate(date.ix)+1, '%d/%m/%Y')) %>% pull(deaths) %>% sum
  if (death.status) {
    death.labs$title <- 'ERROR on DGS data for demographics'
    death.labs$subtitle <- ' for new deaths ({format(label.death$women + label.death$men, big.mark = ",", trim = TRUE)} not {format(covid19.pt %>% filter(dateRep == strftime(anydate(date.ix)+1, \'%d/%m/%Y\')) %>% pull(deaths) %>% sum, big.mark = ",", trim = TRUE)})' %>% glue
    input.data <- input.data %>% mutate(death = 0,
                                        label.death = NA_character_,
                                        label.death = if_else(type == '30-39', 'ERROR on DGS data', label.death))
    if (input.data %>% filter(type == '30-39') %>% nrow == 0) {
      input.data <- input.data %>% bind_rows(list(type = '30-39', gender = 'men' , death = 0, confirmed = 0, label.death = 'ERROR on DGS data', label.confirmed = NA_character_, predicted.death = 0),
                                             list(type = '30-39', gender = 'women' , death = 0, confirmed = 0, label.death = 'ERROR on DGS data', label.confirmed = NA_character_, predicted.death = 0),)
    }
  }
  #
  #
  #
  #
  #
  my.plots$confirmed <- input.data %>%
          ggplot(aes(x = confirmed, y = type, fill = gender)) +
          geom_bar(stat = 'identity') +
          ggrepel::geom_label_repel(aes(label = label.confirmed, fill = gender), color = 'white', direction = 'x', seed = 1985, size = 3.5,
                                    nudge_x = ifelse(input.data$gender == 'men', -1, 1),
                                    show.legend = FALSE,
                                    na.rm = TRUE) +
          expand_limits(x =c(-1 * confirmed.max, confirmed.max)) +
          scale_x_continuous('', labels = function(ix) { return(abs(ix)) }) +
          scale_y_discrete(limits = age.data$type %>% unique %>% sort) +
          scale_fill_viridis_d('', end = .8, labels = function(ix) { if (confirmed.status) return(ix) else return(paste0(ix, ': ', format(label.confirmed[ix], big.mark = ',', trim = TRUE), ' (', format(label.predicted[ix], big.mark = ',', trim = TRUE), ')'))}) +
          labs(title = confirmed.labs$title,
               subtitle = confirmed.labs$subtitle,
               caption = confirmed.labs$captions,
               y = confirmed.labs$y,
               x = confirmed.labs$x) +
          theme_minimal() +
          theme(legend.position = 'bottom')
  my.plots$deaths <- input.data %>%
          ggplot(aes(x = death, y = type, fill = gender)) +
          geom_bar(stat = 'identity') +
          ggrepel::geom_label_repel(aes(label = label.death, fill = gender), color = 'white', direction = 'x', seed = 1985, size = 3.5,
                                    nudge_x = ifelse(input.data %>% filter(!is.na(label.death)) %>% pull(gender) == 'men', -1, 1),
                                    show.legend = FALSE,
                                    na.rm = TRUE) +
          expand_limits(x =c(-1 * death.max, death.max)) +
          scale_x_continuous('', labels = function(ix) { return(abs(ix)) }) +
          scale_y_discrete(limits = age.data$type %>% unique %>% sort) +
          scale_fill_viridis_d('', end = .8, labels = function(ix) { if (death.status) return(ix) else return(paste0(ix, ': ', format(label.death[ix], big.mark = ',', trim = TRUE), ''))}) +
          labs(title = death.labs$title,
               subtitle = death.labs$subtitle,
               caption = death.labs$caption,
               y = death.labs$x,
               x = death.labs$y) +
          theme_minimal() +
          theme(legend.position = 'bottom')

  return(my.plots)
}
