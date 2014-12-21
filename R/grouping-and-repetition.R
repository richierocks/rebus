#' A range or char_class of characters.
#' 
#' Match a range or char_class of characters.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/charclass.html}
#' @examples
#' char_range("e", "t")
#' char_range(3, 5)
#' char_class(LOWER)
#' negated_char_class(LOWER)
#' @export
char_class <- function(x)
{
  paste0("[", x, "]")
}

#' @rdname char_class
#' @export
negated_char_class <- function(x)
{
  paste0("[^", x, "]")
}

#' @rdname char_class
#' @export
negate_and_group <- function(x)
{
  .Deprecated("negated_char_class")
  negated_char_class(x)
}

#' Repeat values
#' 
#' Match repeated values.
#' @param x A character vector.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/repeat.html}
#' @examples
#' x <- char_class(graph())
#' optional(x)
#' zero_or_more(x)
#' one_or_more(x)
#' repeated(x, 3)
#' repeated(x, 3, 5)
#' @export
repeated <- function(x, lo, hi)
{
  lo <- as.integer(lo)
  if(lo < 0)
  {
    stop("lo must be non-negative.")
  }
  if(missing(hi))
  {
    if(lo == 0)
    {
      return(zero_or_more(x))
    }
    if(lo == 1)
    {
      return(one_or_more(x))
    }
    return(paste0(x, "{", lo, "}"))
  }
  hi <- as.integer(hi)
  
  if(hi <= lo)
  {
    stop("hi must be greater than lo.")
  }
  if(hi == 1)
  {
    # Implicitly lo == 0
    return(optional(x))
  }
  paste0(x, "{", lo, ",", hi, "}")
}

#' @rdname repeated
#' @export
optional <- function(x)
{
  paste0(x, "?")
}

#' @rdname repeated
#' @export
lazy <- optional

#' @rdname repeated
#' @export
zero_or_more <- function(x)
{
  paste0(x, "*")
}

#' @rdname repeated
#' @export
one_or_more <- function(x)
{
  paste0(x, "+")
}

#' Engine for grouping and repeating classes
#' 
#' An engine for the class functions that implicited calls \code{char_class} and
#' \code{repeated} for certain input combinations.
#' @param x A string.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param char_class \code{TRUE} or \code{FALSE}. Should the class be grouped?
#' @return A character vector representing part or all of a regular expression.
repeat_in_class <- function(x, lo, hi, char_class)
{
  if(char_class)
  {
    x <- char_class(x)
    if(!missing(lo))
    {
      x <- repeated(x, lo, hi)
    }
  }
  x
}
