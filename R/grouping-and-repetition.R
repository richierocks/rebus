#' A range or group of characters.
#' 
#' Match a range or group of characters.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/charclass.html}
#' @examples
#' char_range("e", "t")
#' char_range(3, 5)
#' group(lower())
#' negate_and_group(lower())
#' @export
group <- function(x)
{
  paste0("[", x, "]")
}

#' @rdname group
#' @export
negate_and_group <- function(x)
{
  paste0("[^", x, "]")
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
#' x <- group(graph())
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
#' An engine for the class functions that implicited calls \code{group} and
#' \code{repeated} for certain input combinations.
#' @param x A string.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param group \code{TRUE} or \code{FALSE}. Should the class be grouped?
#' @return A character vector representing part or all of a regular expression.
group_and_repeat_class <- function(x, lo, hi, group)
{
  if(group)
  {
    x <- group(x)
    if(!missing(lo))
    {
      x <- repeated(x, lo, hi)
    }
  }
  x
}
