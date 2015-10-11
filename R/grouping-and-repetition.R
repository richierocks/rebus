#' A range or char_class of characters.
#' 
#' Match a range or char_class of characters.
#' @param ... Character vectors.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/charclass.html}
#' @examples
#' char_class(LOWER, "._")
#' negated_char_class(LOWER, "._")
#' @export
char_class <- function(...)
{
  regex("[", ..., "]")
}

#' @rdname char_class
#' @export
negated_char_class <- function(...)
{
  regex("[^", ..., "]")
}

#' @rdname char_class
#' @export
negate_and_group <- function(...)
{
  .Deprecated("negated_char_class")
  negated_char_class(...)
}

#' Repeat values
#' 
#' Match repeated values.
#' @param x A character vector.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param lazy A logical value.  Should repetition be matched lazily or 
#' greedily?
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/repeat.html} and
#' \url{http://www.rexegg.com/regex-quantifiers.html} and
#' \url{http://www.rexegg.com/regex-anchors.html}
#' @examples
#' x <- graph()
#' optional(x)
#' zero_or_more(x)
#' repeated(x, 0, Inf) # same
#' one_or_more(x)
#' repeated(x, 1, Inf) # same
#' repeated(x, 0)
#' repeated(x, 1)
#' repeated(x, 3)
#' repeated(x, 3, 5)
#' @include internal.R
#' @export
repeated <- function(x, lo, hi, lazy = FALSE)
{
  lo <- as.integer(lo)
  if(missing(hi))
  {
    hi <- lo
  }
  args <- recycle(x, lo, hi, lazy)
  with(
    args,
    {
      hi <- ifelse(is.na(hi), lo, floor(hi))
      if(!all(is.finite(lo)))
      {
        stop("lo has missing or infinite values.")
      }
      if(any(lo < 0))
      {
        stop("lo has negative values.")
      }
      if(any(hi < lo))
      {
        stop("hi has values that are less than the corresponding values in lo.")
      }
      if(any(is.na(lazy)))
      {
        stop("lazy has missing values.")
      }
      rx <- regex(x, "{", lo, ",", hi, "}")
      
      # Special cases
      i <- lo == 0 & hi == 1
      rx[i] <- optional(x[i])
      i <- lo == 1 & hi == 1
      rx[i] <- x[i]
      i <- lo == 0 & is.infinite(hi)
      rx[i] <- zero_or_more(x[i])
      i <- lo == 1 & is.infinite(hi)
      rx[i] <- one_or_more(x[i])
      i <- lo > 1 & is.infinite(hi)
      rx[i] <- regex(x[i], "{", lo[i], ",", "}")
      i <- lo != 1 & lo == hi
      rx[i] <- regex(x[i], "{", lo[i], "}")
      
      rx[lazy] <- optional(rx[lazy])
      rx
    }
  )   
}

#' @rdname repeated
#' @export
optional <- function(x)
{
  regex(x, "?")
}

#' @rdname repeated
#' @export
lazy <- optional

#' @rdname repeated
#' @export
zero_or_more <- function(x)
{
  regex(x, "*")
}

#' @rdname repeated
#' @export
one_or_more <- function(x)
{
  regex(x, "+")
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
