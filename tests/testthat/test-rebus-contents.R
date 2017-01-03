test_that(
  "All functions from sub packages are exported",
  {
    pkgs <- paste0(
      "rebus.", 
      c("base", "numbers", "datetimes", "unicode")
    )
    
    x <-
      unlist(
        lapply(
          pkgs,
          function(pkg)
          {
            library(pkg, character.only = TRUE)
            ls(paste0("package:", pkg))
          }
        )
      )
    library(rebus)
    y <- ls("package:rebus")
    
    should_be_exported_but_isnt <- setdiff(x, y)
    shouldnt_exist <- setdiff(y, x)
    expect_equal(
      length(should_be_exported_but_isnt), 
      0, 
      label = toString(should_be_exported_but_isnt)
    )
    expect_equal(
      length(shouldnt_exist), 
      0,
      label = toString(shouldnt_exist)
    )
  }
)

