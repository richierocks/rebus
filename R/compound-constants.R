#' @rdname ALPHA
#' @include concatenation.R
#' @include class-groups.R
#' @export
ASCII_ALPHA <- ASCII_LOWER %c% ASCII_UPPER

#' @rdname ALPHA
#' @export
ASCII_ALNUM <- ASCII_ALPHA %c% ASCII_DIGIT

#' @rdname ALPHA
#' @export
ISO_DATE <- ascii_digit(4) %c% 
  "-" %c%
  range(0, 1) %c%
  ascii_digit() %c% 
  "-" %c%
  range(0, 3) %c%
  ascii_digit()

#' @rdname ALPHA
#' @export
ISO_TIME <- range(0, 1) %c%
  ascii_digit() %c% 
  ":" %c%
  range(0, 5) %c%
  ascii_digit() %c% 
  ":" %c%
  range(0, 6) %c% # 6 allowed for leap seconds
  ascii_digit()

#' @rdname ALPHA
#' @export
ISO_DATETIME <- iso_date() %c% group(" T") %c% iso_time()
