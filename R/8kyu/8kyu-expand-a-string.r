# Expand a string (BETA)
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

expand <- function(s){
  unlist(strsplit(s, NULL))
}


# Tests
test_that("Sample Tests", {
  expect_equal(expand("hello"), c("h", "e", "l", "l", "o"))
  expect_equal(expand(""), character(0))
})