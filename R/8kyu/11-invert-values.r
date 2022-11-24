# Invert values
# Difficulty: 8 kyu

# Soltution 1
invert <- function(vec){
  vec * -1
}

# Solution 2 (more concise)
invert <- function(vec){
  -vec
}


# Test

test_that('Basic tests', {
  expect_equal(invert(c(1,2,3,4,5)),c(-1,-2,-3,-4,-5))
  expect_equal(invert(c(1,-2,3,-4,5)), c(-1,2,-3,4,-5))
  expect_equal(invert(numeric()), numeric())
  expect_equal(invert(c(0)), c(0))
})