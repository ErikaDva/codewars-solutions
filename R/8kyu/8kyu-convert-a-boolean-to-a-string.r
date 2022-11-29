# Convert a Boolean to a String
# Language: R
# Difficulty: 8 kyu

boolean_to_string <- function(b){
  toString(b)
}


# Tests
test_that('Basic tests', {
  expect_equal(boolean_to_string(TRUE), "TRUE")
  expect_equal(boolean_to_string(FALSE), "FALSE")
})