# You only need one - Beginner
# Language: R
# Difficulty: 8 kyu

# Check that a vector contains a given element
check <- function(a, x){
 x %in% a
}


# Tests
test_that('Basic tests', {
  expect_equal(check(c(66, 101), 66), TRUE)  
  expect_equal(check(c(101, 45, 75, 105, 99, 107), 107), TRUE) 
  expect_equal(check(c('t', 'e', 's', 't'), 'e'), TRUE)
  expect_equal(check(c('what', 'a', 'great', 'kata'), 'kat'), FALSE) 
})