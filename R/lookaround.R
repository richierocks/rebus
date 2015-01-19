#' Lookaround
#' 
#' Zero length matching.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/lookaround.html}
#' @examples
#' x <- "foo"
#' lookahead(x)
#' negative_lookahead(x)
#' lookbehind(x)
#' negative_lookbehind(x)
#' @export
lookahead <- function(x)
{
  perl_regex("(?=", x, ")")  
}

#' @rdname lookahead
#' @export
negative_lookahead <- function(x)
{
  perl_regex("(?!", x, ")")  
}

#' @rdname lookahead
#' @export
lookbehind <- function(x)
{
  perl_regex("(?<=", x, ")")  
}

#' @rdname lookahead
#' @export
negative_lookbehind <- function(x)
{
  perl_regex("(<!", x, ")")  
}
