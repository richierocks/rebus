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
  paste(..., sep = "|", collapse = NULL)  
}

#' @rdname or
#' @export
`%|%` <- function(x, y)
{
  or(x, y)
}
