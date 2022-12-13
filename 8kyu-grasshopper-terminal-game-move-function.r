# Grasshopper - Terminal game move function
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

move <- function(pos, roll) {
  pos + roll * 2
}


# Tests
test_that("basic tests", {
  expect_equal(move(0, 4), 8)
  expect_equal(move(3, 6), 15)
  expect_equal(move(2, 5), 12)
})