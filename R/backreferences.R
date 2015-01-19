#' Backreferences
#' 
#' Backreferences for replacement operations.
#' @references \url{http://www.regular-expressions.info/backref.html}
#' @examples
#' REF1
#' REF2
#' # and so on, up to
#' REF9
#' @name Backreferences
#' @include regex-methods
#' @export
REF1 <- regex("\\1")

#' @name Backreferences
#' @export
REF2 <- regex("\\2")

#' @name Backreferences
#' @export
REF3 <- regex("\\3")

#' @name Backreferences
#' @export
REF4 <- regex("\\4")

#' @name Backreferences
#' @export
REF5 <- regex("\\5")

#' @name Backreferences
#' @export
REF6 <- regex("\\6")

#' @name Backreferences
#' @export
REF7 <- regex("\\7")

#' @name Backreferences
#' @export
REF8 <- regex("\\8")

#' @name Backreferences
#' @export
REF9 <- regex("\\9")

#' Make the regular expression recursive.
#' 
#' Makes the regular expression (or part of it) recursive.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/recurse.html}
#' @examples
#' recursive("a")
#' @export
recursive <- function(x)
{
  perl_regex(x, "(?R)")
}
