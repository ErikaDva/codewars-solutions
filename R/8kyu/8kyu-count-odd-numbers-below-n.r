# Count Odd Numbers below n
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

odd_count <- function(n) {
  n %/% 2
}


# Tests
test_that("Sample tests", {
  expect_equal(odd_count(15), 7)
  expect_equal(odd_count(15023), 7511)
})