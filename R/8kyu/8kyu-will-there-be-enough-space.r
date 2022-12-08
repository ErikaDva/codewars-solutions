# Will there be enough space?
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

# Solution 1
enough <- function(cap, on, wait){
  n = cap - on - wait
  ifelse(n < 0, abs(n), 0)
}

# Solution 2 using max to return the higher value (more concise)
enough <- function(cap, on, wait){
  max(0, on + wait - cap)
}


# Tests
test_that('Basic tests', {
  expect_equal(enough(10, 5, 5), 0)
  expect_equal(enough(100, 60, 50), 10)
  expect_equal(enough(20, 5, 5), 0)
})