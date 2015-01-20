#' @rdname CharacterClasses
#' @include regex-methods.R
#' @include concatenation.R
#' @include class-groups.R
#' @export
ASCII_ALPHA <- ASCII_LOWER %c% ASCII_UPPER

#' @rdname CharacterClasses
#' @export
ASCII_ALNUM <- ASCII_ALPHA %c% ASCII_DIGIT

#' @rdname CharacterClasses
#' @importFrom utils as.roman
#' @export
ROMAN <- repeated("M", 0, 3) %c% 
  optional(or1(as.character(as.roman(seq.int(100, 900, 100))))) %c% 
  optional(or1(as.character(as.roman(seq.int(10, 90, 10))))) %c% 
  optional(or1(as.character(as.roman(1:9))))

#' @rdname CharacterClasses
#' @export
UNMATCHABLE <- END %c%  "a"
