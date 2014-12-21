#' Alternation
#' 
#' Match one string or another.
#' 
#' @param x A character vector.
#' @param y A character vector.
#' @param ... Character vectors.
#' @param capture A logical value indicating whether or not the result should be 
#' captured.  See note.
#' @return A character vector representing part or all of a regular expression.
#' @note \code{or} takes multiple character vector inputs and returns a 
#' character vector of the inputs separated by pipes. \code{\%|\%} is an operator 
#' interface to this function. \code{or1} takes a single character vector and 
#' returns a string collapsed by pipes.
#' 
#' When \code{capture} is \code{TRUE}, the values are wrapped in a capture 
#' group (see \code{\link{capture}}).  When \code{capture} is \code{FALSE} (the 
#' default for \code{or} and \code{or1}), the values are wrapped in a 
#' non-capture group (see \code{\link{token}}).  When \code{capture} is 
#' \code{NA}, (the case for \code{\%|\%}) the values are not wrapped in 
#' anything.
#' @seealso \code{\link[base]{paste}}
#' @references \url{http://www.regular-expressions.info/alternation.html}
#' @examples
#' or(letters, LETTERS, "foo")
#' letters %|% LETTERS %|% "foo"
#' or1(letters) # implicit non-capturing group
#' or1(letters, capture = TRUE)
#' or1(letters, capture = NA)
#' @export
or <- function(..., capture = FALSE)
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
  engroup(paste(..., sep = "|", collapse = NULL), capture)
}

#' @rdname or
#' @export
`%|%` <- function(x, y)
{
  or(x, y, capture = NA_character_)
}

#' @rdname or
#' @export
or1 <- function(x, capture = FALSE)
{
  engroup(paste0(x, collapse = "|"), capture)
}
