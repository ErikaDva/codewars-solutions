# Convert a Number to a String!
# Difficulty: 8 kyu

number_to_string <- function(n) {
  as.character(n)
}


# Tests
test_that("fixed tests", {
  expect_equal(number_to_string(67), '67')
  expect_equal(number_to_string(79585), '79585')
  expect_equal(number_to_string(3), '3')
  expect_equal(number_to_string(-1), '-1')
})