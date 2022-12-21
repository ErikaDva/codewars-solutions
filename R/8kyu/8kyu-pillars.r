# Pillars
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

pillars <- function(num_of_pillars, distance, width) {
  ifelse(num_of_pillars > 1, distance * 100 * (num_of_pillars - 1) + width * (num_of_pillars - 2), 0)
}


# Tests
test_that("Sample tests", {
  expect_equal(pillars(1, 10, 10), 0)
  expect_equal(pillars(2, 20, 25), 2000)
  expect_equal(pillars(11, 15, 30), 15270)
})