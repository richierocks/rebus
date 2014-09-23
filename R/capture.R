#' Capture a token, or not
#' 
#' Create a token to capture or not.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/brackets.html}
#' @examples
#' x <- "foo"
#' capture(x)
#' noncapture(x)
#' @export
capture <- function(x)
{
  paste0("(", x, ")")
}

#' @rdname capture
#' @export
noncapture <- function(x)
{
  paste0("(?:", x, ")")
}
