#' Title
#'
#' @param new.dat
#' @param old.dat
#'
#' @return
#' @export
#'
#' @examples
#' dat1 <- dgs.pt
#' dat2 <- dat1
#' dat2[1, 3] <- 900000
#' send.discord.msg(dat2, dat1)
send.discord.msg <- function(new.dat, old.dat) {
  tryCatch({
    webhook.env <- Sys.getenv('DISCORD_WEBHOOK')
    if (webhook.env != "") {
      webhook <- strsplit(webhook.env, ';')

      line1.new <- new.dat %>% dplyr::top_n(1, date) %>% dplyr::select(-country)
      line1.old <- old.dat %>% dplyr::top_n(1, date) %>% dplyr::select(-country)

      msg <- c()
      if (line1.new %>% dplyr::pull(date) != line1.old %>% dplyr::pull(date)) {
        msg.header <- c(glue::glue("**PT.COVID -- New date**: {line1.new %>% dplyr::pull(date))"))
      } else {
        msg.header <- c("**PT.COVID -- Data changed**")
      }

      for (ix.col in colnames(line1.old  %>% dplyr::select(-date))) {
        cell.old <- line1.old[1, ix.col] %>% purrr::pluck(1)
        cell.new <- line1.new[1, ix.col] %>% purrr::pluck(1)
        if ((is.na(cell.old) && !is.na(cell.new)) || (!is.na(cell.new) && cell.old != cell.new)) {
          cell.new <- format(cell.new, big.mark = ' ')
          msg <- c(msg, glue::glue(' * {ix.col}: {cell.new}'))
        }
      }
      msg.discord <- paste(c(msg.header, msg), collapse = '\n')
      for (el in webhook) {
        body <- list(content = msg.discord)

        res <- httr::POST(
          el,
          body = body,
          encode = "json"
        )

      }
    } else {
      message("Webhook is not defined. Discord msg not sent.")
    }
  }, error = function(err) { warning("Failed at sending message to discord", err)})
  # else do nothing
}
