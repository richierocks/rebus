#' Build regular expression in a human readable way
#' 
#' Regular expressions are a very powerful tool, but the syntax is terse enough 
#' to be difficult to read. This makes bugs easy to introduce, and hard to 
#' find. This package contains functions to make building regular expressions
#' easier.
#' @docType package
#' @name regex
#' @aliases regex regex-package
#' @examples
#' # Match a hex colour, like \code{"#99af01"}.  This reads "Match a hash, 
#' # followed by six hexadecimal values.
#' "#" %c% hex_digit(6)
#' 
#' # Simple email address matching. This reads "Immediately match one or more 
#' # letters, numbers, dots, underscores, percents, plusses or hyphens. Then 
#' # match an 'at' symbol. Then match one or more letters, numbers, dots, or 
#' # hyphens. Then match a dot. Then match two to four letters. Then the string 
#' # must end or there is no match."
#' START %c% 
#'   one_or_more(group(ASCII_ALNUM %c% "._%+-")) %c%
#'   "@@" %c%
#'   one_or_more(group(ASCII_ALNUM %c% ".-")) %c%
#'   DOT %c%
#'   ascii_alpha(2, 4) %c%
#'   END
#' @author Richard Cotton \email{richierocks@@gmail.com}
#' @include constants.R
#' @include class-groups.R
#' @include grouping-and-repetition.R
NULL
