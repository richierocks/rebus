#' Combine strings together
#' 
#' Operator equivalent of \code{paste0} without \code{collapse}.
#' 
#' @param x A character vector.
#' @param y A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @seealso \code{\link[base]{paste}}
#' @examples
#' letters %c% LETTERS
#' @export
`%c%` <- function(x, y)
{
  regex(x, y)
}
