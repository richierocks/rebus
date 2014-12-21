#' Special characters
#' 
#' Constants to match special characters
#' @references \url{http://www.regular-expressions.info/characters.html}
#' @seealso \code{\link{ALPHA}}, \code{\link{START}}, \code{\link{BOUNDARY}}
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
#' @name SpecialCharacters
NULL

#' @rdname SpecialCharacters
#' @export
BACKSLASH <- "\\\\"

#' @rdname SpecialCharacters
#' @export
CARET <- "\\^"

#' @rdname SpecialCharacters
#' @export
DOLLAR <- "\\$"

#' @rdname SpecialCharacters
#' @export
DOT <- "\\."

#' @rdname SpecialCharacters
#' @export
PIPE <- "\\|"

#' @rdname SpecialCharacters
#' @export
QUESTION <- "\\?"

#' @rdname SpecialCharacters
#' @export
STAR <- "\\*"

#' @rdname SpecialCharacters
#' @export
PLUS <- "\\+"

#' @rdname SpecialCharacters
#' @export
OPEN_PAREN <- "\\("

#' @rdname SpecialCharacters
#' @export
CLOSE_PAREN <- "\\)"

#' @rdname SpecialCharacters
#' @export
OPEN_BRACKET <- "\\["

#' @rdname SpecialCharacters
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
#' @name Anchors
NULL

#' @rdname Anchors
#' @export
START <- "^"

#' @rdname Anchors
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
#' DGT
#' WRD
#' SPC
#' NOT_DGT
#' NOT_WRD
#' NOT_SPC
#' ASCII_DIGIT
#' ASCII_LOWER
#' ASCII_UPPER
#' ASCII_ALPHA
#' ASCII_ALNUM
#' @name CharacterClasses
NULL

#' @rdname CharacterClasses
#' @export
ALPHA <- "[:alpha:]"

#' @rdname CharacterClasses
#' @export
ALNUM <- "[:alnum:]"

#' @rdname CharacterClasses
#' @export
BLANK <- "[:blank:]"

#' @rdname CharacterClasses
#' @export
CNTRL <- "[:cntrl:]"

#' @rdname CharacterClasses
#' @export
DIGIT <- "[:digit:]"

#' @rdname CharacterClasses
#' @export
GRAPH <- "[:graph:]"

#' @rdname CharacterClasses
#' @export
LOWER <- "[:lower:]"

#' @rdname CharacterClasses
#' @export
PRINT <- "[:print:]"

#' @rdname CharacterClasses
#' @export
PUNCT <- "[:punct:]"

#' @rdname CharacterClasses
#' @export
SPACE <- "[:space:]"

#' @rdname CharacterClasses
#' @export
UPPER <- "[:upper:]"

#' @rdname CharacterClasses
#' @export
HEX_DIGIT <- "[:xdigit:]"

#' @rdname CharacterClasses
#' @export
ANY_CHAR <- "."

#' @rdname CharacterClasses
#' @export
DGT <- "\\d"

#' @rdname CharacterClasses
#' @export
WRD <- "\\w"

#' @rdname CharacterClasses
#' @export
SPC <- "\\s"

#' @rdname CharacterClasses
#' @export
NOT_DGT <- "\\D"

#' @rdname CharacterClasses
#' @export
NOT_WRD <- "\\W"

#' @rdname CharacterClasses
#' @export
NOT_SPC <- "\\S"

#' @rdname CharacterClasses
#' @export
ASCII_DIGIT <- "0-9"

#' @rdname CharacterClasses
#' @export
ASCII_LOWER <- "a-z"

#' @rdname CharacterClasses
#' @export
ASCII_UPPER <- "A-Z"

#' Word boundaries
#' 
#' Match a word boundary.
#' @references \url{http://www.regular-expressions.info/wordboundaries.html}
#' @seealso \code{\link{ALPHA}}, \code{\link{BACKSLASH}}, \code{\link{START}}
#' @examples
#' BOUNDARY
#' NOT_BOUNDARY
#' @name WordBoundaries
NULL

#' @rdname WordBoundaries
#' @export
BOUNDARY <- "\\b"

#' @rdname WordBoundaries
#' @export
NOT_BOUNDARY <- "\\B"
