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
  token(
    "1" %c% range(0, 2) %|% 
      optional("0") %c% ascii_digit()
  ) %c%
  "-" %c%
  token(
    "0" %c% range(1, 9) %|% 
      group("12") %c% ascii_digit() %|% 
      "3" %c% group("01")
  )

#' @rdname ALPHA
#' @export
ISO_TIME <- token(
  group("01") %c% ascii_digit() %|% "2" %c% range("0", "3") 
) %c% 
  ":" %c%
  range(0, 5) %c% ascii_digit() %c% 
  ":" %c%
  token(
    range(0, 5) %c% ascii_digit() %|%
      "6" %c% group("01") #leap seconds
  )

#' @rdname ALPHA
#' @export
ISO_DATETIME <- token(iso_date() %c% group(" T") %c% iso_time())
