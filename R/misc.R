#' Make a regex exact
#' 
#' Makes a regex exact: that is, it must contain the whole string, not just part
#' of it.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @examples
#' exactly("#" %R% hex_digit(6))
exactly <- function(x)
{
  regex(START, x, END)
}

#' Treat part of a regular expression literally.
#' 
#' Treats its contents as literal characters.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @examples
#' literal(digit(1, 3))
literal <- function(x)
{
  regex("\\Q", x, "\\E")  
}

