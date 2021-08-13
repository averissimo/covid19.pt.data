get_json_esri <- function() {
  url <- 'https://services.arcgis.com/CCZiGSEQbAxxFVh3/arcgis/rest/services/COVID_Concelhos_ARS_View2/FeatureServer/0/query?f=json&where=ARSNome%3D%27Nacional%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&resultOffset=0&resultRecordCount=50&resultType=standard&cacheHint=true'
  #Reading the HTML code from the website
  json <- httr::GET(url) %>%
    httr::content('text', encoding = 'UTF-8') %>%
    jsonlite::fromJSON()

  return(json$features$attributes)
}

get_json_esri2 <- function() {
  url <- 'https://services.arcgis.com/CCZiGSEQbAxxFVh3/arcgis/rest/services/COVID_ARS_PT_view/FeatureServer/0/query?f=json&where=1%3D1&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&resultOffset=0&resultRecordCount=50&resultType=standard&cacheHint=true'
  #Reading the HTML code from the website
  json <- httr::GET(url) %>%
    httr::content('text', encoding = 'UTF-8') %>%
    jsonlite::fromJSON()

  return(json$features$attributes %>% dplyr::filter(ARSNome == "Nacional"))
}


get_vaccines <- function() {
  url <- 'https://services5.arcgis.com/eoFbezv6KiXqcnKq/arcgis/rest/services/Covid19_Total_Vacinados/FeatureServer/0/query?f=json&where=1%3D1&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&resultType=standard&cacheHint=true'
  json <- httr::GET(url) %>%
    httr::content('text', encoding = 'UTF-8') %>%
    jsonlite::fromJSON()

  features <- json$features$attributes
  my.date <- (features$Data / 1000) %>% anytime::anydate()
  out <- tibble::tibble(date = my.date, first_vaccine = features$Inoculacao1, second_vaccine = features$Inoculacao2)
  return(out)
}



get_ages <- function(features) {
  age.ranges <- c('00-09 anos', '10-19 anos', '20-29 anos', '30-39 anos',
                  '40-49 anos', '50-59 anos', '60-69 anos', '70-79 anos',
                  '80\\+') %>%
    stringr::str_replace(' anos', '') %>%
    stringr::str_replace('\\\\', '')

  age.ranges.input <- c('0009', '1019', '2029', '3039', '4049', '5059', '6069', '7079', '80')

  find_index <- function(dat, prefix, suffix, ix.cols) {
    out.ix <- list(casos = 'confirmed', obitos = 'death', h = 'm', m = 'w')

    raw.ix <- paste(prefix, age.ranges.input, sep = '_') %>%
      paste(suffix, sep = '_') %>%
      sort() %>%
      gsub('^(.+)_(.+)_(.+)$', '\\1_\\3_\\2', .)
    raw.tibble <- dat[,raw.ix] %>% tibble::tibble()
    colnames(raw.tibble) <- paste(out.ix[[prefix]], out.ix[[suffix]], ix.cols, sep = '_')
    return(raw.tibble)
  }

  my.date <- (features$Data_ARS / 1000) %>% anytime::anydate()

  out <- cbind(date = my.date,
               find_index(features, 'casos', 'h', age.ranges),
               find_index(features, 'casos', 'm', age.ranges),
               find_index(features, 'obitos', 'h', age.ranges),
               find_index(features, 'obitos', 'm', age.ranges)) %>%
    tibble::tibble() %>%
    dplyr::select(
      "date",
      "confirmed_m_00-09", "confirmed_w_00-09",
      "confirmed_m_10-19", "confirmed_w_10-19",
      "confirmed_m_20-29", "confirmed_w_20-29",
      "confirmed_m_30-39", "confirmed_w_30-39",
      "confirmed_m_40-49", "confirmed_w_40-49",
      "confirmed_m_50-59", "confirmed_w_50-59",
      "confirmed_m_60-69", "confirmed_w_60-69",
      "confirmed_m_70-79", "confirmed_w_70-79",
      "confirmed_m_80+", "confirmed_w_80+",
      "death_m_00-09", "death_w_00-09",
      "death_m_10-19", "death_w_10-19",
      "death_m_20-29", "death_w_20-29",
      "death_m_30-39", "death_w_30-39",
      "death_m_40-49", "death_w_40-49",
      "death_m_50-59", "death_w_50-59",
      "death_m_60-69", "death_w_60-69",
      "death_m_70-79", "death_w_70-79",
      "death_m_80+", "death_w_80+"
    )

  return(out)
}
