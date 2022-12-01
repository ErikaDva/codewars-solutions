# Square Every Digit
# Langugage: R
# Difficulty: 7 kyu

# Solution 1
square_digits <- function(num){
  split_num = as.numeric(strsplit(as.character(num), "")[[1]])
  as.integer(paste(split_num^2, collapse = ""))
}

# One line of Solution 1
square_digits <- function(num){
  as.numeric(paste((as.character(as.numeric(strsplit(as.character(num),"")[[1]])^2)), collapse = ""))
}


# Tests
test_that('Basic tests', {
  expect_equal(square_digits(3212), 9414)
  expect_equal(square_digits(2112), 4114)
  expect_equal(square_digits(0), 0)
})