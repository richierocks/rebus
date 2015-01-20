test_that(
  "repeated with missing, negative or non-finite lo throws an error",
  {
    x <- DIGIT
    expect_error(repeated(x))
    expect_error(repeated(x, -1))
    expect_error(repeated(x, NA))
    expect_error(repeated(x, NaN))
    expect_error(expect_warning(repeated(x, Inf)))
  }
)

test_that(
  "repeated with hi less than lo throws an error",
  {
    x <- DIGIT
    expect_error(repeated(x, 1, 0))
    expect_error(repeated(x, 2^31-1, 2^31-1-2))
  }
)

test_that(
  "repeated with missing lazy throws an error",
  {
    x <- DIGIT
    expect_error(repeated(x, 1, lazy = NA))
  }
)

test_that(
  "repeated with missing hi returns an appropriate regex",
  {
    x <- DIGIT
    lo <- c(0, 1, 2, 3, 3.99999, 2^31-1)
    expected <- structure(
      paste0(
        x,
        c(
          "{0}",
          "",
          "{2}",
          "{3}",
          "{3}",
          "{2147483647}"
        )
      ),
      class = c("regex", "character")
    )
    expect_identical(repeated(x, lo), expected)
  }
)


test_that(
  "repeated with lo and hi returns an appropriate regex",
  {
    x <- DIGIT
    lo <- rep(0:3, c(7, 6, 5, 5))
    hi <- c(
      0, 1, 2, 3, 2^31-1, NA, Inf, 
      1, 2, 3, 2^31-1, NA, Inf, 
      2, 3, 2^31-1, NA, Inf, 
      3, 4, 2^31-1, NA, Inf
    )
    expected <- structure(
      paste0(
        x,
        c(
          "{0}",
          "?",
          "{0,2}",
          "{0,3}",
          "{0,2147483647}",
          "{0}",
          "*",
          "",
          "{1,2}",
          "{1,3}",
          "{1,2147483647}",
          "",
          "+",
          "{2}",
          "{2,3}",
          "{2,2147483647}",
          "{2}",
          "{2,}",
          "{3}",
          "{3,4}",
          "{3,2147483647}",
          "{3}",
          "{3,}"
        )
      ),
      class = c("regex", "character")
    )
    expect_identical(repeated(x, lo, hi), expected)
  }
)

test_that(
  "repeated with lazy appends a question mark",
  {
    x <- DIGIT
    lo <- rep(0:2, each = 2)
    hi <- rep(c(NA, 3), 3)
    lazy <- TRUE
    expected <- structure(
      paste0(
        x,
        c(
          "{0}?",
          "{0,3}?",
          "?",
          "{1,3}?",
          "{2}?",
          "{2,3}?"
        )
      ),
      class = c("regex", "character")
    )
    expect_identical(repeated(x, lo, hi, lazy), expected)
  }
)
