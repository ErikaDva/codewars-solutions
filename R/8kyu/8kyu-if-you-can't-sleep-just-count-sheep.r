# If you can't sleep, just count sheep!!
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

count_sheep <- function(n){
  result = c()
  for (count in seq(1, n)){
    result <- paste0(result, as.character(count), " sheep...")
  }
  result
}


# Tests
test_that('Basic tests', {
  expect_equal(count_sheep(1), "1 sheep...");
  expect_equal(count_sheep(2), "1 sheep...2 sheep...")
  expect_equal(count_sheep(3), "1 sheep...2 sheep...3 sheep...")
})
