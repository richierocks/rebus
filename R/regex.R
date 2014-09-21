#' Special characters
#' 
#' Match special characters
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @note R has many built-in locale-dependent character classes, like 
#' \code{[:alnum:]} (representing lower or upper case letters or numbers).  
#' There are also some generic character classes like \code{\\w} (representing 
#' lower or upper case letters or numbers or underscores).
#' Finally, there are ASCII-only ways of specifying letters like \code{a-zA-Z}.
#' Which version you want depends upon how you want to deal with international
#' characters, and the vagaries of the underlying regular expression engine.
#' I suggest reading the \code{\link[base]{regex}} help page and doing lots of
#' testing.
#' @references \url{http://www.regular-expressions.info/shorthand.html}
#' @seealso \code{\link[base]{regex}}
#' @examples
#' # R character classes
#' alnum()
#' alpha()
#' blank()
#' cntrl()
#' digit()
#' graph()
#' lower()
#' printable()
#' punct()
#' space()
#' upper()
#' hex_digit()
#' 
#' # Generic classes
#' any_char()
#' digit2()
#' word()
#' whitespace()
#' 
#' # Generic negated classes
#' not_digit2()
#' not_word()
#' not_whitespace()
#' 
#' # Non-locale-specific classes
#' ascii_digit()
#' ascii_lower()
#' ascii_upper()
#' @export
alnum <- function()
{
  "[:alnum:]"
}

#' @rdname alnum
#' @export
alpha <- function()
{
  "[:alpha:]"
}

#' @rdname alnum
#' @export
blank <- function()
{
  "[:blank:]"
}

#' @rdname alnum
#' @export
cntrl <- function()
{
  "[:cntrl:]"
}

#' @rdname alnum
#' @export
digit <- function()
{
  "[:digit:]"
}

#' @rdname alnum
#' @export
graph <- function()
{
  "[:graph:]"
}

#' @rdname alnum
#' @export
lower <- function()
{
  "[:lower:]"
}

#' @rdname alnum
#' @export
printable <- function()
{
  "[:print:]"
}

#' @rdname alnum
#' @export
punct <- function()
{
  "[:punct:]"
}

#' @rdname alnum
#' @export
space <- function()
{
  "[:space:]"
}

#' @rdname alnum
#' @export
upper <- function()
{
  "[:upper:]"
}

#' @rdname alnum
#' @export
hex_digit <- function()
{
  "[:xdigit:]"
}

#' @rdname alnum
#' @export
any_char <- function()
{
  "."
}

#' @rdname alnum
#' @export
digit2 <- function()
{
  "\\d"
}

#' @rdname alnum
#' @export
word <- function()
{
  "\\w"
}

#' @rdname alnum
#' @export
whitespace <- function()
{
  "\\s"
}

#' @rdname alnum
#' @export
not_digit2 <- function()
{
  "\\D"
}

#' @rdname alnum
#' @export
not_word <- function()
{
  "\\W"
}

#' @rdname alnum
#' @export
not_space <- function()
{
  "\\S"
}

#' @rdname alnum
#' @export
ascii_digit <- function()
{
  range(0, 9)
}

#' @rdname alnum
#' @export
ascii_lower <- function()
{
  range("a", "z")
}

#' @rdname alnum
#' @export
ascii_upper <- function()
{
  range("A", "Z")
}

#' @rdname alnum
#' @export
ascii_alpha <- function()
{
  ascii_lower() %c% ascii_upper()
}

#' @rdname alnum
#' @export
ascii_alnum <- function()
{
  ascii_alpha() %c% ascii_digit()
}

#' Special characters
#' 
#' Match special characters
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/characters.html}
#' @examples
#' backslash()
#' caret()
#' dollar()
#' dot()
#' pipe()
#' question()
#' star()
#' plus()
#' open_paren()
#' close_paren()
#' open_bracket()
#' open_brace()
#' @export
backslash <- function()
{
  "\\\\"
}

#' @rdname backslash
#' @export
caret <- function()
{
  "\\^"
}

#' @rdname backslash
#' @export
dollar <- function()
{
  "\\$"
}

#' @rdname backslash
#' @export
dot <- function()
{
  "\\."
}

#' @rdname backslash
#' @export
pipe <- function()
{
  "\\|"
}

#' @rdname backslash
#' @export
question <- function()
{
  "\\?"
}

#' @rdname backslash
#' @export
star <- function()
{
  "\\*"
}

#' @rdname backslash
#' @export
plus <- function()
{
  "\\+"
}

#' @rdname backslash
#' @export
open_paren <- function()
{
  "\\("
}

#' @rdname backslash
#' @export
close_paren <- function()
{
  "\\)"
}

#' @rdname backslash
#' @export
open_bracket <- function()
{
  "\\["
}

#' @rdname backslash
#' @export
open_brace <- function()
{
  "\\{"
}

#' Repeat values
#' 
#' Match repeated values.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/repeat.html}
#' @examples
#' x <- group(graph())
#' optional(x)
#' zero_or_more(x)
#' one_or_more(x)
#' repeated(x, 3)
#' repeated(x, 3, 5)
#' @importFrom assertive assert_all_are_non_negative
#' @importFrom assertive assert_all_are_true
#' @export
repeated <- function(x, lo, hi)
{
  lo <- as.integer(lo)
  assert_all_are_non_negative(lo)
  if(missing(hi))
  {
    if(lo == 0)
    {
      return(zero_or_more(x))
    }
    if(lo == 1)
    {
      return(zero_or_more(x))
    }
    return(paste0(x, "{", lo, "}"))
  }
  hi <- as.integer(hi)
  assert_all_are_true(hi > lo)
  paste0(x, "{", lo, ",", hi, "}")
}

#' @rdname repeated
#' @export
lazy <- optional <- function(x)
{
  paste0(x, "?")
}

#' @rdname repeated
#' @export
zero_or_more <- function(x)
{
  paste0(x, "*")
}

#' @rdname repeated
#' @export
one_or_more <- function(x)
{
  paste0(x, "+")
}

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

#' A range or group of characters.
#' 
#' Match a range or group of characters.
#' @param x A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/charclass.html}
#' @examples
#' range("e", "t")
#' range(3, 5)
#' group(lower())
#' negate_and_group(lower())
#' @export
group <- function(x)
{
  paste0("[", x, "]")
}

#' @rdname group
#' @export
negate_and_group <- function(x)
{
  paste0("[^", x, "]")
}

#' @rdname group
#' @export
range <- function(lo, hi)
{
  #TODO: assertive needs an is_single_char function.
  assert_all_are_true(c(nchar(lo) == 1, nchar(hi) == 1))
  paste0(lo, "-", hi)
}

#' The start or end of a string.
#' 
#' Match the start or end of a string.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/anchors.html}
#' @examples
#' start()
#' end()
#' @export
start <- function()
{
  "^"
}

#' @rdname start
#' @export
end <- function()
{
  "$"
}

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
  paste0("(?=", x, ")")  
}

#' @rdname lookahead
#' @export
negative_lookahead <- function(x)
{
  paste0("(?<=", x, ")")  
}

#' @rdname lookahead
#' @export
lookbehind <- function(x)
{
  paste0("(?!", x, ")")  
}

#' @rdname lookahead
#' @export
negative_lookbehind <- function(x)
{
  paste0("(<!", x, ")")  
}

#' Combine strings together
#' 
#' Operator equivalent of \code{\link[base]{paste0}} without \code{collapse}.
#' 
#' @param x A character vector.
#' @param y A character vector.
#' @return A character vector representing part or all of a regular expression.
#' @seealso \code{\link[base]{paste0}}
#' @examples
#' letters %c% LETTERS
#' @export
`%c%` <- function(x, y)
{
  paste0(x, y)
}

#' Alternation
#' 
#' Match one string or another.
#' 
#' @param ... Character vectors.
#' @return A character vector representing part or all of a regular expression.
#' @seealso \code{\link[base]{paste}}
#' @references \url{http://www.regular-expressions.info/alternation.html}
#' @examples
#' or(letters, LETTERS, foo)
#' letters %|% LETTERS %|% "foo"
#' @export
or <- function(...)
{
  paste(..., sep = "|", collapse = NULL)  
}

`%|%` <- function(x, y)
{
  or(x, y)
}

#' Word boundaries
#' 
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/wordboundaries.html}
#' @examples
#' boundary()
#' not_boundary()
#' @export
boundary <- function()
{
  "\\b"
}

not_boundary <- function()
{
  "\\B"
}
