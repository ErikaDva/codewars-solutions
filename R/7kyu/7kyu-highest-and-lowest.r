# Highest and Lowest
# Difficulty: 7 kyu

high_and_low <- function(numbers){
  split_number <- as.integer(unlist(strsplit(numbers, " ")))
  paste(max(split_number), min(split_number), collapse = " ")
}


# Test

test_that('Example tests', {
  expect_equal(high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4"), "42 -9");
  expect_equal(high_and_low("1 2 3"), "3 1");
})
