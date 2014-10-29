#' @rdname CharacterClasses
#' @include concatenation.R
#' @include class-groups.R
#' @export
ASCII_ALPHA <- ASCII_LOWER %c% ASCII_UPPER

#' @rdname CharacterClasses
#' @export
ASCII_ALNUM <- ASCII_ALPHA %c% ASCII_DIGIT


# TODO: Roman numerals
# test on as.roman(1:3899)
ROMAN <- one_or_more(group("[IVXLCDM]"))
# token(optional("V") %c% repeated("I", 1, 3) %|% optional("I") %c% group("VX"))
