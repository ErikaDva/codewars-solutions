# You Can't Code Under Pressure #1
# Language: R
# Difficulty: 8 kyu

double_integer <- function(i) {
  i * 2
}


# Tests
test_that("example", {
  expect_equal(double_integer(2), 4)
})