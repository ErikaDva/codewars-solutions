# Descending Order
# Language: R
# Version 3.4.1
# Difficulty: 7 kyu

descending_order <- function(num){
  as.numeric(paste(sort(unlist(strsplit(as.character(num), NULL)), decreasing = TRUE), collapse = ""))
}


# Tests
test_that('Basic tests', {
  expect_equal(descending_order(0), 0)
  expect_equal(descending_order(15), 51)
  expect_equal(descending_order(123456789), 987654321)
})