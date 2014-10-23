#' @rdname CharacterClasses
#' @include concatenation.R
#' @include class-groups.R
#' @export
ASCII_ALPHA <- ASCII_LOWER %c% ASCII_UPPER

#' @rdname CharacterClasses
#' @export
ASCII_ALNUM <- ASCII_ALPHA %c% ASCII_DIGIT

#' ISO date-time constants
#' 
#' Compound regex constants for matching ISO 8601 dates and times.
#' @seealso \code{\link{ClassGroups}}
#' @examples 
#' ISO_DATE
#' ISO_TIME
#' ISO_DATETIME
#' dates <- seq(as.Date("2000-01-01"), as.Date("2001-01-01"), "1 day")
#' datetimes <- seq(as.POSIXct(Sys.Date()), as.POSIXct(Sys.Date() + 1), "1 sec")
#' times <- substring(datetimes, 12, 19)
#' stopifnot(
#'   all(grepl(ISO_DATE, dates)),
#'   all(grepl(ISO_TIME, times)),
#'   all(grepl(ISO_DATETIME, datetimes))
#' )
#' non_dates <- c(
#'   "2000-13-01", "2000-01-32", "2000-00-01", "2000-01-00"
#' )
#' non_times <- c(
#'   "24:00:00", "23:60:59", "23:59:62", "23 59 59"
#' )
#' stopifnot(
#'   all(!grepl(ISO_DATE, non_dates)),
#'   all(!grepl(ISO_TIME, non_times))
#' )
#' @name DateTimeConstants
NULL

#' @rdname DateTimeConstants
#' @export
ISO_DATE <- token(
  ascii_digit(4) %c%
  "-" %c%
  token(
    "1" %c% char_range(0, 2) %|% 
      optional("0") %c% char_range(1, 9)
  ) %c%
  "-" %c%
  token(
    "0" %c% char_range(1, 9) %|% 
      group("12") %c% ascii_digit() %|% 
      "3" %c% group("01")
  )
)

#' @rdname DateTimeConstants
#' @export
ISO_TIME <- token(
  token(
    group("01") %c% ascii_digit() %|% "2" %c% char_range("0", "3") 
  ) %c% 
  ":" %c%
  char_range(0, 5) %c% ascii_digit() %c% 
  ":" %c%
  token(
    char_range(0, 5) %c% ascii_digit() %|%
      "6" %c% group("01") #leap seconds
  )
)

#' @rdname DateTimeConstants
#' @export
ISO_DATETIME <- token(ISO_DATE %c% group(" T") %c% ISO_TIME)
