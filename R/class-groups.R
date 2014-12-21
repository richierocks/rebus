#' Class Groups
#' 
#' Match groups of classes
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param char_class \code{TRUE} or \code{FALSE}. Should the values be wrapped
#' into a character class?
#' @return A character vector representing part or all of a regular expression.
#' @note R has many built-in locale-dependent character classes, like 
#' \code{[:alnum:]} (representing lower or upper case letters or numbers).  
#' There are also some generic character classes like \code{\\w} (representing 
#' lower or upper case letters or numbers or underscores).
#' Finally, there are ASCII-only ways of specifying letters like \code{a-zA-Z}.
#' Which version you want depends upon how you want to deal with international
#' characters, and the vagaries of the underlying regular expression engine.
#' I suggest reading the \code{\link[base]{regex}} help page and doing lots of
#' testing.
#' @references \url{http://www.regular-expressions.info/shorthand.html}
#' @seealso \code{\link[base]{regex}}, \code{\link{Unicode}}
#' @examples
#' # R character classes
#' alnum()
#' alpha()
#' blank()
#' cntrl()
#' digit()
#' graph()
#' lower()
#' printable()
#' punct()
#' space()
#' upper()
#' hex_digit()
#' 
#' # Generic classes
#' any_char()
#' dgt()
#' wrd()
#' spc()
#' 
#' # Generic negated classes
#' not_dgt()
#' not_wrd()
#' not_spc()
#' 
#' # Non-locale-specific classes
#' ascii_digit()
#' ascii_lower()
#' ascii_upper()
#' 
#' # ISO 8601 date-time classes
#' iso_date()
#' iso_time()
#' iso_datetime()
#' 
#' #Grouping and repetition
#' digit(char_class = FALSE)
#' digit(3)
#' digit(3, 5)
#' digit(0)
#' digit(1)
#' digit(0, 1)
#' @include constants.R
#' @include grouping-and-repetition.R
#' @name ClassGroups
NULL

#' @rdname ClassGroups
#' @export
alnum <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ALNUM, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
alpha <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ALPHA, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
blank <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(BLANK, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
cntrl <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(CNTRL, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
digit <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DIGIT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
graph <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(GRAPH, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
lower <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(LOWER, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
printable <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PRINT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
punct <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(PUNCT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
space <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SPACE, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
upper <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(UPPER, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
hex_digit <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(HEX_DIGIT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
any_char <- function(lo, hi)
{
  repeat_in_class(ANY_CHAR, lo, hi, char_class = FALSE)
}

#' @rdname ClassGroups
#' @export
dgt <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(DGT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
wrd <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(WRD, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
spc <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(SPC, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
not_dgt <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NOT_DGT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
not_wrd <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NOT_WRD, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
not_spc <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(NOT_SPC, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
ascii_digit <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ASCII_DIGIT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
ascii_lower <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ASCII_LOWER, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
ascii_upper <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ASCII_UPPER, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
ascii_alpha <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ASCII_LOWER %c% ASCII_UPPER, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
ascii_alnum <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ASCII_ALPHA %c% ASCII_DIGIT, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
iso_date <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ISO_DATE, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
iso_time <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ISO_TIME, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
iso_datetime <- function(lo, hi, char_class = TRUE)
{
  repeat_in_class(ISO_DATETIME, lo, hi, char_class)
}

#' @rdname ClassGroups
#' @export
char_range <- function(lo, hi, char_class = TRUE)
{
  lo <- get_first_char(lo)
  hi <- get_first_char(hi)
  x <- paste0(lo, "-", hi)
  if(char_class)
  {
    x <- char_class(x)
  }
  x
}

get_first_char <- function(x)
{
  x <- as.character(x)
  if(any(is.na(x)))
  {
    stop("Missing values are not allowed.")
  }
  if(nchar(x) > 1)
  {
    warning("Returning only the first character from x.")
    return(substring(x, 1, 1))
  }
  x
}
