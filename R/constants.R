#' Special characters
#' 
#' Constants to match special characters
#' @references \url{http://www.regular-expressions.info/characters.html}
#' @seealso \code{\link{ALNUM}}, \code{\link{START}}, \code{\link{BOUNDARY}}
#' @examples
#' BACKSLASH
#' CARET
#' DOLLAR
#' DOT
#' PIPE
#' QUESTION
#' STAR
#' PLUS
#' OPEN_PAREN
#' CLOSE_PAREN
#' OPEN_BRACKET
#' OPEN_BRACE
#' @aliases SpecialChars
#' @export
BACKSLASH <- "\\\\"

#' @rdname BACKSLASH
#' @export
CARET <- "\\^"

#' @rdname BACKSLASH
#' @export
DOLLAR <- "\\$"

#' @rdname BACKSLASH
#' @export
DOT <- "\\."

#' @rdname BACKSLASH
#' @export
PIPE <- "\\|"

#' @rdname BACKSLASH
#' @export
QUESTION <- "\\?"

#' @rdname BACKSLASH
#' @export
STAR <- "\\*"

#' @rdname BACKSLASH
#' @export
PLUS <- "\\+"

#' @rdname BACKSLASH
#' @export
OPEN_PAREN <- "\\("

#' @rdname BACKSLASH
#' @export
CLOSE_PAREN <- "\\)"

#' @rdname BACKSLASH
#' @export
OPEN_BRACKET <- "\\["

#' @rdname BACKSLASH
#' @export
OPEN_BRACE <- "\\{"

#' The start or end of a string.
#' 
#' Match the start or end of a string.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/anchors.html}
#' @examples
#' START
#' END
#' @aliases Anchors
#' @export
START <- "^"

#' @rdname START
#' @export
END <- "$"

#' Class Constants
#' 
#' Match a class of values.
#' @seealso \code{\link{alnum}}, \code{\link{BACKSLASH}}, \code{\link{START}}, \code{\link{BOUNDARY}}
#' @examples
#' ALNUM
#' ALPHA
#' BLANK
#' CNTRL
#' DIGIT
#' GRAPH
#' LOWER
#' PRINT
#' PUNCT
#' SPACE
#' UPPER
#' HEX_DIGIT
#' ANY_CHAR
#' DIGIT2
#' WORD
#' WHITESPACE
#' NOT_DIGIT2
#' NOT_WORD
#' NOT_WHITESPACE
#' ASCII_DIGIT
#' ASCII_LOWER
#' ASCII_UPPER
#' ASCII_ALPHA
#' ASCII_ALNUM
#' ISO_DATE
#' ISO_TIME
#' ISO_DATETIME
#' @aliases CharacterClasses
#' @export
ALPHA <- "[:alpha:]"

# roxygen documentation is attached to ALPHA rather than ALNUM to avoid clashes
# with class group documentation on alnum().

#' @rdname ALPHA
#' @export
ALNUM <- "[:alnum:]"

#' @rdname ALPHA
#' @export
BLANK <- "[:blank:]"

#' @rdname ALPHA
#' @export
CNTRL <- "[:cntrl:]"

#' @rdname ALPHA
#' @export
DIGIT <- "[:digit:]"

#' @rdname ALPHA
#' @export
GRAPH <- "[:graph:]"

#' @rdname ALPHA
#' @export
LOWER <- "[:lower:]"

#' @rdname ALPHA
#' @export
PRINT <- "[:print:]"

#' @rdname ALPHA
#' @export
PUNCT <- "[:punct:]"

#' @rdname ALPHA
#' @export
SPACE <- "[:space:]"

#' @rdname ALPHA
#' @export
UPPER <- "[:upper:]"

#' @rdname ALPHA
#' @export
HEX_DIGIT <- "[:xdigit:]"

#' @rdname ALPHA
#' @export
ANY_CHAR <- "."

#' @rdname ALPHA
#' @export
DIGIT2 <- "\\d"

#' @rdname ALPHA
#' @export
WORD <- "\\w"

#' @rdname ALPHA
#' @export
WHITESPACE <- "\\s"

#' @rdname ALPHA
#' @export
NOT_DIGIT2 <- "\\D"

#' @rdname ALPHA
#' @export
NOT_WORD <- "\\W"

#' @rdname ALPHA
#' @export
NOT_WHITESPACE <- "\\S"

#' @rdname ALPHA
#' @export
ASCII_DIGIT <- "0-9"

#' @rdname ALPHA
#' @export
ASCII_LOWER <- "a-z"

#' @rdname ALPHA
#' @export
ASCII_UPPER <- "A-Z"

#' Word boundaries
#' 
#' Match a word boundary.
#' @references \url{http://www.regular-expressions.info/wordboundaries.html}
#' @seealso \code{\link{ALNUM}}, \code{\link{BACKSLASH}}, \code{\link{START}}
#' @examples
#' BOUNDARY
#' NOT_BOUNDARY
#' @aliases WordBoundaries
#' @export
BOUNDARY <- "\\b"

#' @rdname BOUNDARY
#' @export
NOT_BOUNDARY <- "\\B"
