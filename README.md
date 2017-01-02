[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Is the package on CRAN?](http://www.r-pkg.org/badges/version/rebus)](http://www.r-pkg.org/pkg/rebus)
[![Build Status](https://semaphoreci.com/api/v1/projects/b2bc4ad6-9e0e-49e6-b6ca-cb3ceec56180/636923/badge.svg)](https://semaphoreci.com/richierocks/rebus)
[![Build status](https://ci.appveyor.com/api/projects/status/vsn767xf7hywodmx?svg=true)](https://ci.appveyor.com/project/richierocks/rebus)





# rebus: Regular Expression Builder, Um, Something

## Build regular expressions in a human readable way

Regular expressions are a very powerful tool, but the syntax is terse enough 
to be difficult to read.  This makes bugs easy to introduce and hard to 
find.  This package contains functions to make building regular expressions
easier.

## Package contents

The package contains constants for character classes (R-specific ones like 
`ALNUM` and `GRAPH`, generic ones like `WORD`, and compound ones like 
`ISO_DATE`), special characters (`DOT`, `BACKSLASH`), anchors (`START`, `END`).

There are functions for creating character classes, repetition, creating groups, 
capturing and all the basic regex functionality (`char_class`, `repeated`, 
`group`, `capture`).

Each of the class constants has a corresponding function that groups the class
and allows repetition (`alnum(3, 5)`).

There are operators for concatenation (`%R%` or `%c%`) and alternation (`%|%`).

## Examples

### Match a hex colour, like `"#99af01"`
This reads *Match a hash, followed by six hexadecimal values.*

    "#" %R% hex_digit(6)    

To match only a hex colour and nothing else, you can add anchors to the 
start and end of the expression.

    START %R% "#" %R% hex_digit(6) %R% END

### Simple email address matching. 
This reads *Match one or more letters, numbers, dots, underscores, percents, 
plusses or hyphens. Then match an 'at' symbol. Then match one or more letters, 
numbers, dots, or hyphens. Then match a dot. Then match two to four letters.*

    one_or_more(char_class(ASCII_ALNUM %R% "._%+-")) %R%
      "@" %R%
      one_or_more(char_class(ASCII_ALNUM %R% ".-")) %R%
      DOT %R%
      ascii_alpha(2, 4)

### IP address matching. 
First we need an expression to match numbers between 0 and 255.  Both the 
following syntaxes read *Match two then five then a number between zero and 
five.  Or match two then a number between zero and four then a digit. Or match 
an optional zero or one followed by an optional digit folowed by a compulsory 
digit.  Make this a single token, but don't capture it.*

    # Using the %|% operator
    ip_element <- group(
      "25" %R% char_range(0, 5) %|%
      "2" %R% char_range(0, 4) %R% ascii_digit() %|%
      optional(char_class("01")) %R% optional(ascii_digit()) %R% ascii_digit()
    )
        
    # The same again, this time using the or function
    ip_element <- or(
      "25" %R% char_range(0, 5),
      "2" %R% char_range(0, 4) %R% ascii_digit(),
      optional(char_class("01")) %R% optional(ascii_digit()) %R% ascii_digit()
    )

    # It's easier to write using number_range, though it isn't quite as optimal 
    # as handcrafted regexes.
    number_range(0, 255, allow_leading_zeroes = TRUE)
    
Now an IP address consists of 4 of these numbers separated by dots. This 
reads *Match a word boundary. Then create a token from an `ip_element` 
followed by a dot, and repeat it three times.  Then match another `ip_element`
followed by a word boundary.*

    BOUNDARY %R% 
      repeated(group(ip_element %R% DOT), 3) %R% 
      ip_element %R%
      BOUNDARY

## See also

The [`stringr`](https://github.com/hadley/stringr/) and 
[`stringi`](https://github.com/Rexamine/stringi) packages provide tools for 
matching regular expressions and nicely complement this package.

The [`rex`](https://github.com/kevinushey/rex) and 
[`Regularity`](https://github.com/martineastwood/Regularity) packages are very 
similar to this package.

[regular-expressions.info](http://www.regular-expressions.info) has good advice 
on using regular expression in R.  In particular, see the 
[R language page](http://www.regular-expressions.info/rlanguage.html) and the 
[examples page](http://www.regular-expressions.info/examples.html).

[debuggex.com](https://www.debuggex.com) is a visual regex debugging and testing 
site.

## TODO

More high-level regexes for complex data types (phone numbers, post codes,
car licenses, whatever).

