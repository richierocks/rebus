regex
=====

## Build regular expressions in a human readable way

Regular expressions are a very powerful tool, but the syntax is terse enough 
to be difficult to read.  This makes bugs easy to introduce and hard to 
find.  This package contains functions to make building regular expressions
easier.

## Package contents

The package contains constants for character classes (R-specific ones like 
`ALNUM` and `GRAPH`, generic ones like `WORD`, and compound ones like 
`ISO_DATE`), special characters (`DOT`, `BACKSLASH`), anchors (`START`, `END`).

There are functions for grouping, repetition, tokenising, capturing and all the
basic regex functionality (`group`, `repeated`, `token`, `capture`).

Each of the class constants has a corresponding function that groups the class
and allows repetition (`alnum(3, 5)`).

There are operators for concatenation (`%c%`) and alternation (`%|%`).

## Examples

### Match a hex colour, like `"#99af01"`
This reads *Match a hash, followed by six hexadecimal values.*

    "#" %c% hex_digit(6)    

To match only a hex colour and nothing else, you can add anchors to the 
start and end of the expression.

    START %c% "#" %c% hex_digit(6) %c% END
    
### Simple email address matching. 
This reads *Match one or more letters, numbers, dots, underscores, percents, 
plusses or hyphens. Then match an 'at' symbol. Then match one or more letters, 
numbers, dots, or hyphens. Then match a dot. Then match two to four letters.*

    one_or_more(group(ASCII_ALNUM %c% "._%+-")) %c%
      "@" %c%
      one_or_more(group(ASCII_ALNUM %c% ".-")) %c%
      DOT %c%
      ascii_alpha(2, 4)
      
IP address matching. First we need an expression to match numbers between 0 
and 255.  This reads *Match two then five then a number between zero and 
five.  Or match two then a number between zero and four then a digit. Or 
match an optional zero or one followed by an optional digit folowed by a
compulsory digit.  Make this a single token, but don't capture it.*

    ip_element <- token(
      "25" %c% range(0, 5) %|%
      "2" %c% range(0, 4) %c% ascii_digit() %|%
      optional(group("01")) %c% optional(ascii_digit()) %c% ascii_digit()
    )
    
Now an IP address consists of 4 of these numbers separated by dots. This 
reads *Match a word boundary. Then create a token from an ip_element 
followed by a dot, and repeat it three times.Then match another ip_element
followed by a word boundary.*

    BOUNDARY %c% 
        repeated(token(ip_element %c% DOT), 3) %c% 
        ip_element %c%
        BOUNDARY