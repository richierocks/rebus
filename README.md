regex
=====

# Build regular expression in a human readable way

Regular expressions are a very powerful tool, but the syntax is terse enough 
to be difficult to read.  This makes bugs easy to introduce, and hard to 
find.  This package contains functions to make building regular expressions
easier.

# Examples

    # Match a hex colour, like "#99af01".  This reads "Match a hash, followed by 
    six hexadecimal values."
    "#" %c% repeated(group(hex_digit()), 6)
    
    # Same again, using magrittr piping.
    "#" %c% 
      (hex_digit() %>% group) %>%
      repeated(lo = 6)
    
    # Simple email address matching.  This reads "Immediately match one or more 
    letters, numbers, dots, underscores, percents, plusses or hyphens. Then match 
    an at symbol. Then match one or more letters, numbers, dots, or hyphens.
    then match a dot. Then match two to four letters.  Then the string must end
    or there is no match."
    start() %c% 
      one_or_more(group(ascii_alnum() %c% "._%+-")) %c%
      "@" %c%
      one_or_more(group(ascii_alnum() %c% ".-")) %c%
      dot() %c%
      repeated(ascii_alpha(), lo = 2, hi = 4) %c%
      end()
    
    # Same again, using magrittr piping.
    start() %c% 
      (((ascii_alnum() %c% "._%+-") %>% group) %>% one_or_more) %c%
      "@" %c%
      (((ascii_alnum() %c% ".-") %>% group) %>% one_or_more) %c%
      dot() %c%
      (ascii_alpha() %>% repeated(lo = 2, hi = 4)) %c%
      end()