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
#' 
#' x <- "\\^$."
#' rx <- BACKSLASH %R% CARET %R% DOLLAR %R% DOT
#' grepl(rx, x)
#' grepl(x, x) # no escapes - these chars have special meaning inside regex
#' @name SpecialCharacters
#' @include regex-methods.R
NULL

#' @rdname SpecialCharacters
#' @export
BACKSLASH <- regex("\\\\")

#' @rdname SpecialCharacters
#' @export
CARET <- regex("\\^")

#' @rdname SpecialCharacters
#' @export
DOLLAR <- regex("\\$")

#' @rdname SpecialCharacters
#' @export
DOT <- regex("\\.")

#' @rdname SpecialCharacters
#' @export
PIPE <- regex("\\|")

#' @rdname SpecialCharacters
#' @export
QUESTION <- regex("\\?")

#' @rdname SpecialCharacters
#' @export
STAR <- regex("\\*")

#' @rdname SpecialCharacters
#' @export
PLUS <- regex("\\+")

#' @rdname SpecialCharacters
#' @export
OPEN_PAREN <- regex("\\(")

#' @rdname SpecialCharacters
#' @export
CLOSE_PAREN <- regex("\\)")

#' @rdname SpecialCharacters
#' @export
OPEN_BRACKET <- regex("\\[")

#' @rdname SpecialCharacters
#' @export
OPEN_BRACE <- regex("\\{")

#' The start or end of a string.
#' 
#' Match the start or end of a string.
#' @return A character vector representing part or all of a regular expression.
#' @references \url{http://www.regular-expressions.info/anchors.html} and
#' \url{http://www.rexegg.com/regex-anchors.html}
#' @note Caret and dollar are used as start/end delimiters, since \code{\\A} and 
#' \code{\\Z} are not supported by R's internal PRCE engine or \code{stringi}'s
#' ICU engine.
#' @examples
#' START
#' END
#' 
#' x <- c("catfish", "tomcat")
#' rx <- START %R% "cat"
#' rx2 <- "cat" %R% END
#' grepl(rx, x)
#' grepl(rx2, x)
#' @name Anchors
NULL

#' @rdname Anchors
#' @export
START <- regex("^")

#' @rdname Anchors
#' @export
END <- regex("$")

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
#' ROMAN
#' UNMATCHABLE
#' 
#' x <- c("a1 A", "a1 a")
#' rx <- LOWER %R% DIGIT %R% SPACE %R% UPPER
#' grepl(rx, x)
#' @name CharacterClasses
NULL

#' @rdname CharacterClasses
#' @export
ALPHA <- regex("[:alpha:]")

#' @rdname CharacterClasses
#' @export
ALNUM <- regex("[:alnum:]")

#' @rdname CharacterClasses
#' @export
BLANK <- regex("[:blank:]")

#' @rdname CharacterClasses
#' @export
CNTRL <- regex("[:cntrl:]")

#' @rdname CharacterClasses
#' @export
DIGIT <- regex("[:digit:]")

#' @rdname CharacterClasses
#' @export
GRAPH <- regex("[:graph:]")

#' @rdname CharacterClasses
#' @export
LOWER <- regex("[:lower:]")

#' @rdname CharacterClasses
#' @export
PRINT <- regex("[:print:]")

#' @rdname CharacterClasses
#' @export
PUNCT <- regex("[:punct:]")

#' @rdname CharacterClasses
#' @export
SPACE <- regex("[:space:]")

#' @rdname CharacterClasses
#' @export
UPPER <- regex("[:upper:]")

#' @rdname CharacterClasses
#' @export
HEX_DIGIT <- regex("[:xdigit:]")

#' @rdname CharacterClasses
#' @export
ANY_CHAR <- regex(".")

#' @rdname CharacterClasses
#' @export
DGT <- regex("\\d")

#' @rdname CharacterClasses
#' @export
WRD <- regex("\\w")

#' @rdname CharacterClasses
#' @export
SPC <- regex("\\s")

#' @rdname CharacterClasses
#' @export
NOT_DGT <- regex("\\D")

#' @rdname CharacterClasses
#' @export
NOT_WRD <- regex("\\W")

#' @rdname CharacterClasses
#' @export
NOT_SPC <- regex("\\S")

#' @rdname CharacterClasses
#' @export
ASCII_DIGIT <- regex("0-9")

#' @rdname CharacterClasses
#' @export
ASCII_LOWER <- regex("a-z")

#' @rdname CharacterClasses
#' @export
ASCII_UPPER <- regex("A-Z")

#' Word boundaries
#' 
#' Match a word boundary.
#' @references \url{http://www.regular-expressions.info/wordboundaries.html} and
#' \url{http://www.rexegg.com/regex-boundaries.html}
#' @seealso \code{\link{ALPHA}}, \code{\link{BACKSLASH}}, \code{\link{START}}
#' @examples
#' BOUNDARY
#' NOT_BOUNDARY
#' 
#' x <- c("catfish", "tomcat")
#' rx <- BOUNDARY %R% "cat"
#' grepl(rx, x)
#' @name WordBoundaries
NULL

#' @rdname WordBoundaries
#' @export
BOUNDARY <- regex("\\b")

#' @rdname WordBoundaries
#' @export
NOT_BOUNDARY <- regex("\\B")
