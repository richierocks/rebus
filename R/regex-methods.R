
#' Convert or test for regex objects
#' 
#' \code{as.regex} gives objects the class \code{"regex"}. \code{is.regex}
#' tests for objects of class \code{"regex"}.
#' @param x An object to test or convert.
#' @return \code{as.regex} returns the inputs object, with class 
#' \code{c("regex", "character")}.
#' \code{is.regex} returns \code{TRUE} when the input inherits from class 
#' \code{"regex"} and \code{FALSE} otherwise.
#' Similarly \code{as.perl_regex} gives the input object a class of
#' \code{c("perl_regex", "regex", "character")}.  For compatibility with
#' the \code{stringr} package it also sets the attribute \code{perl = TRUE}.
#' @examples
#' x <- as.regex("month.abb")
#' is.regex(x)
#' as.perl_regex("month.abb")
#' is.perl_regex(lookahead("a"))
#' @export
as.regex <- function(x)
{
  if(is.regex(x))
  {
    return(x)
  }
  structure(x, class = c("regex", "character"))
}

#' @rdname as.regex
#' @export
is.regex <- function(x)
{
  inherits(x, "regex")
}

#' Create a regex
#' 
#' Creates a regex object.  
#' @param x A regex.
#' @param ... Passed to \code{paste0}.
#' @return An object of class \code{regex}.
#' @note This works like \code{paste0}, but the returns value has class
#' \code{c("regex", "character")}.
#' @seealso \code{\link[base]{paste0}}
#' as.regex(month.abb)
#' regex(letters[1:5], "?")
#' as.perl_regex(month.abb)
#' perl_regex(letters[1:5], "?")
#' @export
regex <- function(...)
{
  as.regex(paste0(...))
}

#' Print or format regex objects
#' 
#' Prints/formats objects of class \code{regex}.
#' @param x A regex object.
#' @param ... Passed from other format methods.  Currently ignored.
#' @return \code{format.regex} returns a character vector. \code{print.regex}
#' is invoked for the side effect of printing the regex object.
#' @examples
#' group(1:5)
#' lookahead(1:5)
#' @export
format.regex <- function(x, ...)
{
  paste0("<regex> ", x) 
}

#' @rdname format.regex
#' @export
print.regex <- function(x, ...)
{
  cat(format(x, ...), sep = "\n")
}

#' @rdname as.regex
#' @export
as.perl_regex <- function(x)
{
  if(is.perl_regex(x))
  {
    return(x)
  }
  structure(
    x, 
    class = c("perl_regex", "regex", "character"), 
    perl  = TRUE
  )
}

#' @rdname as.regex
#' @export
is.perl_regex <- function(x)
{
  inherits(x, "perl_regex")
}

#' @rdname regex
#' @export
perl_regex <- function(...)
{
  as.perl_regex(paste0(...))
}

#' @rdname regex
#' @export
format.perl_regex <- function(x, ...)
{
  paste0("<perl_regex> ", x) 
}
