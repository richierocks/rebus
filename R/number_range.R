#' Generate a regular expression for a number range.
#' 
#' Generates a regular expression that matches a sequence of numbers.
#' @param lo An integer.
#' @param hi An integer greater than or equal to \code{lo}.
#' @param capture A logical value. See \code{\link{or}} for details.
#' @return A character vector representing part or all of a regular expression.
#' @examples
#' number_range(0, 255)
#' number_range(100, 199)
#' number_range(6, 54321)
#' number_range(-77, 77)
#' number_range(-77, 77, capture = TRUE)
#' number_range(-77, 77, capture = NA)
#' @export
number_range <- function(lo, hi, capture = FALSE)
{
  lo <- as.integer(lo[1])
  hi <- as.integer(hi[1])
  if(hi < lo)
  {
    stop("hi must be greater than lo.")
  }
  if(hi == lo)
  {
    return(lo)
  }
  if(lo < 0L && hi < 0L)
  {
    return("-" %c% number_range(-hi, -lo, capture = capture))
  }
  if(lo < 0L && hi > 0L)
  {
    return(
      engroup(
        number_range(lo, -1) %|% number_range(0, hi),
        capture = capture
      )
    )
  }
  x <- format(seq.int(lo, hi, 1L))
  d <- as.data.frame(
    do.call(rbind, strsplit(x, " ?")),
    stringsAsFactors = FALSE
  )
  alternates <- get_alternate_ranges(d)
  simplify_repeated_digits(or1(alternates, capture = capture))
}

get_alternate_ranges <- function(d)
{  
  if(is.null(ncol(d)) || ncol(d) == 0)
  {
    return(NULL)
  }
  if(ncol(d) == 1)
  {
    return(char_range(d[1, 1], d[nrow(d), 1]))
  }
  if(max(d[, 1]) == min(d[, 1]))
  {
    return(max(d[, 1]) %c% get_alternate_ranges(d[, -1, drop = FALSE]))
  }
  grp <- factor(
    ifelse(
      d[, 1] == min(d[, 1]) & d[1, 1] != "0",
      "min",
      ifelse(
        d[, 1] == max(d[, 1]) & d[nrow(d), 1] < "9",
        "max",
        "middle"
      )
    ),
    levels = c("min", "middle", "max")
  )
  split_d <- split(d, grp)
  with(
    split_d,
    c(
      if(nrow(min) > 0)
      {
        min[1, 1] %c% get_alternate_ranges(min[, -1, drop = FALSE])
      } else 
      {
        NULL
      },
      if(nrow(middle) > 0)
      {
        char_range(middle[1, 1], middle[nrow(middle), 1]) %c% 
          ascii_digit(ncol(d) - 1, ncol(d) - 1)
      } else 
      {
        NULL
      },
      if(nrow(max) > 0)
      {
        max[1, 1] %c% get_alternate_ranges(max[, -1, drop = FALSE])
      } else 
      {
        NULL
      }
    )
  )
}

simplify_repeated_digits <- function(x)
{
  if(length(x) > 1)
  {
    warning("Only using the first element of x.")
    x <- x[1]
  }
  rx <- "(\\[0-9\\]){2,}"
  repeat
  {   
    m <- regexpr(rx, x, perl = TRUE)
    if(m == -1) break
    match_len <- attr(m, "match.length")
    n <- match_len / 5
    x <- paste0(substring(x, 1, m - 1), ascii_digit(n), substring(x, m + match_len))
  }
  x
}

# x <- "x[0-9]x[0-9][0-9]x[0-9][0-9][0-9]x"
# debugonce(simplify_repeated_digits)
# simplify_repeated_digits(x)

