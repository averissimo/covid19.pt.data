#' Send message to discord
#'
#' @param body msg to be sent
discord.send <- function(body) {
  webhook.env <- Sys.getenv('DISCORD_WEBHOOK')
  if (webhook.env != "") {
    webhook <- strsplit(webhook.env, ';')

    for (el in webhook) {
      res <- httr::POST(
        el,
        body = paste(body, collapse = "\n"),
        encode = "json"
      )
    }
  }
}

#' Send message with differences in data
#'
#' @param new.dat new data
#' @param old.dat old data, from previous day
#'
#' @export
#'
#' @examples
#' dat1 <- dgs.pt
#' dat2 <- dat1
#' dat2[1, 3] <- 900000
#' send.discord.msg(dat2, dat1)
send.discord.msg <- function(new.dat, old.dat) {

  webhook.env <- Sys.getenv('DISCORD_WEBHOOK')
  if (webhook.env != "") {
    message("Found Discord webhook!")
    cat("Found Discord webhook!")
    futile.logger::flog.info("", Sys.getenv(), capture = TRUE)

    tryCatch({
      discord.send("Found webhook... updating")

      line1.new <- new.dat %>% dplyr::top_n(1, date) %>% dplyr::select(-country)
      line1.old <- old.dat %>% dplyr::top_n(1, date) %>% dplyr::select(-country)

      msg <- c()
      if (line1.new %>% dplyr::pull(date) != line1.old %>% dplyr::pull(date)) {
        msg.header <- c(glue::glue("**PT.COVID -- New data**: {line1.new %>% dplyr::pull(date)}"))
      } else {
        msg.header <- c("**PT.COVID -- Data changed**")
      }

      for (ix.col in colnames(line1.old  %>% dplyr::select(-date))) {
        cell.old <- line1.old[1, ix.col] %>% purrr::pluck(1)
        cell.new <- line1.new[1, ix.col] %>% purrr::pluck(1)

        discord.send("Cell.old {length(cell.old)}" %>% glue::glue())
        discord.send(cell.old)

        discord.send("Cell.new {length(cell.new)}" %>% glue::glue())
        discord.send(cell.new)

        if ((is.na(cell.old) && !is.na(cell.new)) || (!is.na(cell.new) && cell.old != cell.new)) {
          discord.send("Enter if")
          cell.new.f <- format(cell.new, big.mark = ' ')
          if (!is.na(cell.new) && cell.old != cell.new) {
            discord.send("Enter 2nd if")
            cell.diff <- cell.new - cell.old
            cell.diff.f <- format(cell.diff, big.mark = ' ')
            if (cell.diff > 0) {
              discord.send("Enter 3rd if")
              cell.diff.f <- glue::glue('+{cell.diff.f}')
            }
            msg <- c(msg, glue::glue(' * {ix.col}: {cell.new.f} ({cell.diff.f})'))
          } else {
            discord.send("Enter 2nd else")
            msg <- c(msg, glue::glue(' * {ix.col}: {cell.new.f}'))
          }
        }
      }
      if (length(msg) == 0) {
        msg.header <- "Nothing changed in PT.COVID"
      }
      msg.discord <- paste(c(msg.header, msg), collapse = '\n')
      discord.send(msg.discord)
    }, error = function(err) {
      warning("Failed at sending message to discord", err)
      discord.send("Error")
      discord.send("  :: {err$message}" %>% glue::glue())
      stop("Stopping!")
    })
  } else {

    warning("Discord webhook is not defined. Discord msg not sent.")
    cat("Discord webhook is not defined. Discord msg not sent.")
  }
  # else do nothing
}
