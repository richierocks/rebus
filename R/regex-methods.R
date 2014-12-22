
#' Convert or test for regex objects
#' 
#' \code{as.regex} gives objects the class \code{"regex"}. \code{is.regex} tests
#' for objects of class \code{"regex"}.
#' @param x An object to test or convert.
#' @return \code{as.regex} returns the inputs object, with class 
#' \code{c("regex", "character")}.
#' \code{is.regex} returns \code{TRUE} when the input inherits from class 
#' \code{"regex"} and \code{FALSE} otherwise.
#' @export
as.regex <- function(x)
{
  structure(x, class = c("regex", "character"))
}

#' @rdname as.regex
#' @export
is.regex <- function(x)
{
  inherits(x, "regex")
}

#' Print or format regex objects
#' 
#' Prints/formats objects of class \code{regex}.
#' @param x A regex object.
#' @param ... Passed from other format methods.  Currently ignored.
#' @return \code{format.regex} returns a character vector. \code{print.regex}
#' is invoked for the side effect of printing the regex object.
#' @export
format.regex = function(x, ...)
{
  paste0("<regex> ", x) 
}

#' @rdname format.regex
#' @export
print.regex = function(x, ...)
{
  cat(format(x, ...), sep = "\n")
}
