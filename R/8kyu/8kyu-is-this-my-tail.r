# Is this my tail?
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

correct_tail <- function(body, tail){
  tail == substr(body, nchar(body), nchar(body))
}

# Base R function - endsWith(x, suffix)
endsWith()


# Tests
test_that('Basic tests', {
  expect_equal(correct_tail("Fox", "x"), TRUE)
  expect_equal(correct_tail("Rhino", "o"), TRUE)
  expect_equal(correct_tail("Meerkat", "t"), TRUE)
  expect_equal(correct_tail("Emu", "t"), FALSE)
  expect_equal(correct_tail("Badger", "s"), FALSE)
  expect_equal(correct_tail("Giraffe", "d"), FALSE)
})