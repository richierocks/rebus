#' Alternation
#' 
#' Match one string or another.
#' 
#' @param x A character vector.
#' @param y A character vector.
#' @param ... Character vectors.
#' @return A character vector representing part or all of a regular expression.
#' @note \code{or} takes multiple character vector inputs and returns a 
#' character vector of the inputs separated by pipes. \code{\%|\%} is an operator 
#' interface to this function. \code{or1} takes a single character vector and 
#' returns a string collapsed by pipes.
#' @seealso \code{\link[base]{paste}}
#' @references \url{http://www.regular-expressions.info/alternation.html}
#' @examples
#' or(letters, LETTERS, "foo")
#' letters %|% LETTERS %|% "foo"
#' or1(letters)
#' @export
or <- function(...)
{
  if(nargs() < 2)
  {
    warning(
      "or is intended to be called with at least 2 arguments. ",
      nargs(),
      ngettext(nargs(), " was", " were"),
      " passed. Maybe you wanted or1 instead?"
    )
  }
  paste(..., sep = "|", collapse = NULL)  
}

#' @rdname or
#' @export
`%|%` <- function(x, y)
{
  or(x, y)
}

#' @rdname or
#' @export
or1 <- function(x)
{
  paste0(x, collapse = "|")
}
