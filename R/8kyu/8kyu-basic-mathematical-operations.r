# Basic Mathematical Operations
# Language: R
# Difficulty: 8 kyu

# Solution
basic_op <- function(operator, value1, value2){
  eval(parse(text = paste(as.character(value1), operator, as.character(value2))))
}

# Refactored soltuin
basic_op <- function(operator, value1, value2){
  eval(parse(text = paste(value1, operator, value2)))
}


# Tests
test_that('Basic tests', {
  expect_equal(basic_op('+', 4, 7), 11)
  expect_equal(basic_op('-', 15, 18), -3)
  expect_equal(basic_op('*', 5, 5), 25)
  expect_equal(basic_op('/', 49, 7), 7)
})