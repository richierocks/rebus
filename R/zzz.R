.onAttach <- function(libname, pkgname)
{
  msg <- "Some renaming to more correctly represent standard regular expression terminology has occured since v0.0-1.  The group function now creates non-captured groups (replacing token).  Be careful: this change breaks old code!  Sorry.  The original group function has been renamed char_class.  negate_and_group has been renamed negated_char_class."
  packageStartupMessage(paste(strwrap(msg), collapse = "\n"))  
}
