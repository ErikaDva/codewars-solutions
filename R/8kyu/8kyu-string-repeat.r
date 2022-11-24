# String repeat
# Difficulty: 8 kyu

repeat_string <- function(count, str) {
  paste(replicate(count, str), collapse = "")
}


# Test

# You can test with testthat (http://r-pkgs.had.co.nz/tests.html#test-structure)
library(testthat)

testthat::test_that("Example tests", {
    testthat::expect_equal(repeat_string(4, 'a'), 'aaaa')
    testthat::expect_equal(repeat_string(3, 'hello '), 'hello hello hello ')
    testthat::expect_equal(repeat_string(2, 'abc'), 'abcabc')
    testthat::expect_equal(repeat_string(6, 'Test'), 'TestTestTestTestTestTest')
})
