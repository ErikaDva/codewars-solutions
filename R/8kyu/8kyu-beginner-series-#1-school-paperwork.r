# Beginner Series #1 School Paperwork
# Language: R
# Difficulty: 8 kyu

# Solution 1
paperwork <- function(n, m){
  if (n < 0 | m < 0){
    0
  }else{
    n * m
  }
}

# A shorter alternative to Solution 1
paperwork <- function(n, m){
  ifelse(n < 0 | m < 0, 0, n * m)
}


# Tests
test_that('Basic tests', {
  expect_equal(paperwork(5,5), 25)
  expect_equal(paperwork(5,-5), 0)
  expect_equal(paperwork(-5,-5), 0)
  expect_equal(paperwork(-5,5), 0)
  expect_equal(paperwork(5,0), 0)
})