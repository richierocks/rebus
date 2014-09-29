#' Alternation
#' 
#' Match one string or another.
#' 
#' @param x A character vector.
#' @param y A character vector.
#' @param ... Character vectors.
#' @return A character vector representing part or all of a regular expression.
#' @seealso \code{\link[base]{paste}}
#' @references \url{http://www.regular-expressions.info/alternation.html}
#' @examples
#' or(letters, LETTERS, "foo")
#' letters %|% LETTERS %|% "foo"
#' @export
or <- function(...)
{
  if(nargs() < 2)
  {
    warning(
      "or is intended to be called with at least 2 arguments. ",
      nargs(),
      ngettext(nargs(), " was", " were"),
      " passed."
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
