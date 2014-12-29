#' Build regular expressions in a human readable way
#' 
#' Regular expressions are a very powerful tool, but the syntax is terse enough 
#' to be difficult to read. This makes bugs easy to introduce, and hard to 
#' find. This package contains functions to make building regular expressions
#' easier.
#' @docType package
#' @name regex
#' @aliases regex regex-package
#' @seealso \code{\link[base]{regex}} and \code{\link[base]{regexpr}}
#' The `stringr` and `stringi` packages provide tools for matching 
#' regular expressions and nicely complement this package.
#' \url{http://www.regular-expressions.info} has good advice on using
#' regular expression in R.  In particular, see
#' \url{http://www.regular-expressions.info/rlanguage.html} and
#' \url{http://www.regular-expressions.info/examples.html}
#' \url{https://www.debuggex.com} is a visual regex debugging and testing site.
#' @examples
#' ### Match a hex colour, like `"#99af01"`
#' # This reads *Match a hash, followed by six hexadecimal values.*
#'   
#' "#" %c% hex_digit(6)    
#' 
#' # To match only a hex colour and nothing else, you can add anchors to the 
#' # start and end of the expression.
#' 
#' START %c% "#" %c% hex_digit(6) %c% END
#' 
#' ### Simple email address matching. 
#' # This reads *Match one or more letters, numbers, dots, underscores, percents, 
#' # plusses or hyphens. Then match an 'at' symbol. Then match one or more letters, 
#' # numbers, dots, or hyphens. Then match a dot. Then match two to four letters.*
#'   
#' one_or_more(char_class(ASCII_ALNUM %c% "._%+-")) %c%
#'   "@@" %c%
#'   one_or_more(char_class(ASCII_ALNUM %c% ".-")) %c%
#'   DOT %c%
#'   ascii_alpha(2, 4)
#' 
#' ### IP address matching. 
#' # First we need an expression to match numbers between 0 and 255.  Both the 
#' # following syntaxes read *Match two then five then a number between zero and 
#' # five.  Or match two then a number between zero and four then a digit. Or match 
#' # an optional zero or one followed by an optional digit folowed by a compulsory 
#' # digit.  Make this a single token, but don't capture it.*
#' 
#' # Using the %|% operator
#' ip_element <- group(
#'   "25" %c% char_range(0, 5) %|%
#'   "2" %c% char_range(0, 4) %c% ascii_digit() %|%
#'   optional(char_class("01")) %c% optional(ascii_digit()) %c% ascii_digit()
#' )
#' 
#' # The same again, this time using the or function
#' ip_element <- or(
#'   "25" %c% char_range(0, 5),
#'   "2" %c% char_range(0, 4) %c% ascii_digit(),
#'   optional(char_class("01")) %c% optional(ascii_digit()) %c% ascii_digit()
#' )
#' 
#' # It's easier to write using number_range, though leading zeroes aren't 
#' # yet supported, and it isn't guaranteed to be as optimal as handcrafted 
#' # regexes.
#' number_range(0, 255)
#' 
#' # Now an IP address consists of 4 of these numbers separated by dots. This 
#' # reads *Match a word boundary. Then create a token from an `ip_element` 
#' # followed by a dot, and repeat it three times.  Then match another `ip_element`
#' # followed by a word boundary.*
#' 
#' BOUNDARY %c% 
#'   repeated(group(ip_element %c% DOT), 3) %c% 
#'   ip_element %c%
#'   BOUNDARY    
#' @author Richard Cotton \email{richierocks@@gmail.com}
#' @include constants.R
#' @include class-groups.R
#' @include grouping-and-repetition.R
NULL
