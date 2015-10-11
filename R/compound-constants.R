#' @rdname CharacterClasses
#' @include regex-methods.R
#' @include concatenation.R
#' @include class-groups.R
#' @export
ASCII_ALPHA <- ASCII_LOWER %R% ASCII_UPPER

#' @rdname CharacterClasses
#' @export
ASCII_ALNUM <- ASCII_ALPHA %R% ASCII_DIGIT

#' @rdname CharacterClasses
#' @importFrom utils as.roman
#' @include mode-modifiers.R
#' @export
ROMAN <- case_insensitive(
    group(
    repeated("M", 0, 3) %R% 
    optional(or1(as.character(as.roman(seq.int(100, 900, 100))))) %R% 
    optional(or1(as.character(as.roman(seq.int(10, 90, 10))))) %R% 
    optional(or1(as.character(as.roman(1:9))))
  )
)

#' @rdname CharacterClasses
#' @export
UNMATCHABLE <- END %R% "a"
