.onAttach <- function(libname, pkgname)
{
  msg <- "%R% is now preferred over %c% for joining regexes, since it is easier to type."
  packageStartupMessage(paste(strwrap(msg), collapse = "\n"))  
}
