#' Get the days of the week
#' 
#' Get the names of the days of the week in a given locale.
#' @param abbreviate A logical value indicating whether or not to return
#' abbreviated names (if they are available).
#' @param locale A string denoting the name of the locale to retrieve names in,
#' or \code{NULL} to use the current locale.
#' @return A string containing a regular expression of the names of the days of
#' the week, separated by pipes.  The first day of the week will be the current 
#' day.
#' @note See \code{\link[base]{Sys.setlocale}} and
#' \url{http://stackoverflow.com/q/20960821/134830} and
#' \url{http://stackoverflow.com/q/26603564/134830} for how to specify
#' the locale.
#' @examples
#' get_weekdays()
#' get_weekdays(TRUE)
#' \dontrun{
#' if(.Platform$OS.type == "windows")
#' {
#'   get_weekdays(locale = "French_France")
#'   get_weekdays(TRUE, locale = "French_France")
#'   get_weekdays(locale = "Arabic_Qatar")
#'   get_weekdays(TRUE, locale = "Arabic_Qatar")
#' } else 
#' {
#'   get_weekdays(locale = "fr_FR.utf8")
#'   get_weekdays(TRUE, locale = "fr_FR.utf8")
#'   get_weekdays(locale = "ar_QA.utf8")
#'   get_weekdays(TRUE, locale = "ar_QA.utf8")
#' }
#' }
get_weekdays <- function(abbreviate = FALSE, locale = NULL)
{
  if(.Platform$OS.type == "windows")
  {
    get_weekdays_windows(abbreviate, locale)
  } else
  {
    get_weekdays_posix(abbreviate, locale)
  }
}

get_weekdays_windows <- function(abbreviate = FALSE, locale = NULL)
{
  if(!is.null(locale))
  {
    lc_ctype <- Sys.getlocale("LC_CTYPE")
    lc_time <- Sys.getlocale("LC_TIME")
    on.exit(Sys.setlocale("LC_CTYPE", lc_ctype))
    on.exit(Sys.setlocale("LC_TIME", lc_time), add = TRUE)
    Sys.setlocale("LC_CTYPE", locale)
    Sys.setlocale("LC_TIME", locale)
  }
  # 20 days is likely overkill, but there may be weird locales with long weeks.
  days <- seq(Sys.Date(), Sys.Date() + 20, "1 day")
  weekday_names <- weekdays(days, abbreviate)
  current_codepage <- as.character(l10n_info()$codepage)
  weekday_names <- unique(
    iconv(weekday_names, from = current_codepage, to = "utf8")
  )
  Reduce(regex::or, weekday_names)
}

get_weekdays_linux <- function(abbreviate = FALSE, locale = NULL)
{
  if(!is.null(locale))
  {
    lc_time <- Sys.getlocale("LC_TIME")
    on.exit(Sys.setlocale("LC_TIME", lc_time), add = TRUE)
    Sys.setlocale("LC_TIME", locale)
  }
  days <- seq(Sys.Date(), Sys.Date() + 20, "1 day")
  weekday_names <- unique(weekdays(days, abbreviate))
  Reduce(regex::or, weekday_names)
}
