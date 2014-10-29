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
  weekday_names <- if(.Platform$OS.type == "windows")
  {
    get_weekdays_windows(abbreviate, locale)
  } else
  {
    get_weekdays_posix(abbreviate, locale)
  }  
  regex::token(Reduce(regex::or, weekday_names))
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
  unique(
    iconv(weekday_names, from = current_codepage, to = "utf8")
  )
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
  unique(weekdays(days, abbreviate))
}

get_months <- function(abbreviate = FALSE, locale = NULL)
{
  month_names <- if(.Platform$OS.type == "windows")
  {
    get_months_windows(abbreviate, locale)
  } else
  {
    get_months_posix(abbreviate, locale)
  }
  regex::token(Reduce(regex::or, month_names))
}

get_months_windows <- function(abbreviate = FALSE, locale = NULL)
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
  # 20 months is likely overkill, but there may be weird locales with long years.
  days <- seq(Sys.Date(), by = "1 month", length.out = 20)
  month_names <- months(days, abbreviate)
  current_codepage <- as.character(l10n_info()$codepage)
  unique(
    iconv(month_names, from = current_codepage, to = "utf8")
  )
}

get_months_linux <- function(abbreviate = FALSE, locale = NULL)
{
  if(!is.null(locale))
  {
    lc_time <- Sys.getlocale("LC_TIME")
    on.exit(Sys.setlocale("LC_TIME", lc_time), add = TRUE)
    Sys.setlocale("LC_TIME", locale)
  }
  days <- seq(Sys.Date(), by = "1 month", length.out = 20)
  unique(months(days, abbreviate))
}

CENTURY <- ascii_digit(2)

DAY <- token(
  "0" %c% char_range(1, 9) %|% 
    group("12") %c% ascii_digit() %|% 
    "3" %c% group("01")
)

EDAY <- token(
  " " %c% char_range(1, 9) %|% 
    group("12") %c% ascii_digit() %|% 
    "3" %c% group("01")
)

HOUR <- token(
  group("01") %c% ascii_digit() %|% "2" %c% char_range("0", "3") 
)

IHOUR <- token(
  group("0") %c% ascii_digit() %|% "1" %c% char_range("0", "2") 
)

DAY_OF_YEAR <- token(
  "36" %c% char_range(0, 6) %|%
  "3" %c% char_range(0, 5) %c% ascii_digit() %|%
  optional(char_range(0, 2)) %c% optional(ascii_digit()) %c% ascii_digit()
)

MONTH <- token(
  "1" %c% char_range(0, 2) %|% 
    optional("0") %c% char_range(1, 9)
)

MINUTE <- char_range(0, 5) %c% ascii_digit()

AM_PM <- token("am" %|% "AM" %|% "pm" %|% "PM")

SECOND <- token(
  char_range(0, 5) %c% ascii_digit() %|%
    "6" %c% group("01") #leap seconds
)

UWEEKDAY <- char_range(1, 7)

WEEK_OF_YEAR <- token(
  "5" %c% char_range(0, 3) %|%
  char_range(0, 4) %c% ascii_digit()
)

WWEEKDAY <- char_range(0, 6)

YEAR2 <- ascii_digit(2)

YEAR4 <- ascii_digit(1, 4)

TIMEZONE_OFFSET <- optional(group("-+")) %c% ascii_digit(4)

TIMEZONE <- token(Reduce(or, OlsonNames()))

MDY <- MONTH %c% "/" %c% DAY %c% "/" %c% YEAR2

FYMD <- YEAR4 %c% "-" %c% MONTH %c% "-" %c% DAY

XYMD <- YEAR2 %c% "/" %c% MONTH %c% "/" %c% DAY

HM <- HOUR %c% ":" %c% MINUTE

HMS <- HOUR %c% ":" %c% MINUTE %c% ":" %c% SECOND

datetime <- function(x, locale = NULL)
{
  x <- gsub("%c", "%a %b %e %H:%M:%S %Y", x)
  x <- gsub("%a", get_weekdays(TRUE, locale = locale), x)
  x <- gsub("%A", get_weekdays(locale = locale), x)
  x <- gsub("%[bh]", get_months(TRUE, locale = locale), x)
  x <- gsub("%B", get_months(locale = locale), x)
  x <- gsub("%C", CENTURY, x)
  x <- gsub("%d", DAY, x)
  x <- gsub("%D", MDY, x)
  x <- gsub("%e", EDAY, x)
  x <- gsub("%F", FYMD, x)
  x <- gsub("%H", HOUR, x)
  x <- gsub("%[Ir]", IHOUR, x)
  x <- gsub("%j", DAY_OF_YEAR, x)
  x <- gsub("%m", MONTH, x)
  x <- gsub("%M", MINUTE, x)
  x <- gsub("%[nt]", space(0), x)
  x <- gsub("%[pP]", AM_PM, x)
  x <- gsub("%R", HM, x)
  x <- gsub("%S", SECOND, x)
  x <- gsub("%[TX]", HMS, x)
  x <- gsub("%u", UWEEKDAY, x)
  x <- gsub("%[gGUVW]", WEEK_OF_YEAR, x)
  x <- gsub("%w", WWEEKDAY, x)
  x <- gsub("%x", XYMD, x)
  x <- gsub("%y", YEAR2, x)
  x <- gsub("%Y", YEAR4, x)
  x <- gsub("%z", TIMEZONE_OFFSET, x)
  x <- gsub("%Z", TIMEZONE, x)
  # TODO %k, %l, %s, %+, %O, %E, %O1, ...%O6
  
  x
}

# cat(datetime(paste0("%", c(letters, LETTERS), collapse = "\n")))
