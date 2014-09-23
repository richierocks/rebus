#' Class Groups
#' 
#' Match groups of classes
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param group \code{TRUE} or \code{FALSE}. Should the class be grouped?
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
#' @seealso \code{\link[base]{regex}}
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
#' digit2()
#' word()
#' whitespace()
#' 
#' # Generic negated classes
#' not_digit2()
#' not_word()
#' not_whitespace()
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
#' digit(group = FALSE)
#' digit(3)
#' digit(3, 5)
#' digit(0)
#' digit(1)
#' digit(0, 1)
#' @include constants.R
#' @include grouping-and-repetition.R
#' @export
alnum <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ALNUM, lo, hi, group)
}

#' @rdname alnum
#' @export
alpha <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ALPHA, lo, hi, group)
}

#' @rdname alnum
#' @export
blank <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(BLANK, lo, hi, group)
}

#' @rdname alnum
#' @export
cntrl <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(CNTRL, lo, hi, group)
}

#' @rdname alnum
#' @export
digit <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DIGIT, lo, hi, group)
}

#' @rdname alnum
#' @export
graph <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(GRAPH, lo, hi, group)
}

#' @rdname alnum
#' @export
lower <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(LOWER, lo, hi, group)
}

#' @rdname alnum
#' @export
printable <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PRINT, lo, hi, group)
}

#' @rdname alnum
#' @export
punct <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(PUNCT, lo, hi, group)
}

#' @rdname alnum
#' @export
space <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(SPACE, lo, hi, group)
}

#' @rdname alnum
#' @export
upper <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(UPPER, lo, hi, group)
}

#' @rdname alnum
#' @export
hex_digit <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(HEX_DIGIT, lo, hi, group)
}

#' @rdname alnum
#' @export
any_char <- function(lo, hi)
{
  group_and_repeat_class(ANY_CHAR, lo, hi, group = FALSE)
}

#' @rdname alnum
#' @export
digit2 <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(DIGIT2, lo, hi, group)
}

#' @rdname alnum
#' @export
word <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(WORD, lo, hi, group)
}

#' @rdname alnum
#' @export
whitespace <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(WHITESPACE, lo, hi, group)
}

#' @rdname alnum
#' @export
not_digit2 <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(NOT_DIGIT2, lo, hi, group)
}

#' @rdname alnum
#' @export
not_word <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class("\\W", lo, hi, group)
}

#' @rdname alnum
#' @export
not_whitespace <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(NOT_WHITESPACE, lo, hi, group)
}

#' @rdname alnum
#' @export
ascii_digit <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ASCII_DIGIT, lo, hi, group)
}

#' @rdname alnum
#' @export
ascii_lower <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ASCII_LOWER, lo, hi, group)
}

#' @rdname alnum
#' @export
ascii_upper <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ASCII_UPPER, lo, hi, group)
}

#' @rdname alnum
#' @export
ascii_alpha <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ASCII_LOWER %c% ASCII_UPPER, lo, hi, group)
}

#' @rdname alnum
#' @export
ascii_alnum <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ASCII_ALPHA %c% ASCII_DIGIT, lo, hi, group)
}

#' @rdname alnum
#' @export
iso_date <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ISO_DATE, lo, hi, group)
}

#' @rdname alnum
#' @export
iso_time <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ISO_TIME, lo, hi, group)
}

#' @rdname alnum
#' @export
iso_datetime <- function(lo, hi, group = TRUE)
{
  group_and_repeat_class(ISO_DATETIME, lo, hi, group)
}

#' @rdname alnum
#' @export
range <- function(lo, hi, group = TRUE)
{
  lo <- get_first_char(lo)
  hi <- get_first_char(hi)
  x <- paste0(lo, "-", hi)
  if(group)
  {
    x <- group(x)
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
