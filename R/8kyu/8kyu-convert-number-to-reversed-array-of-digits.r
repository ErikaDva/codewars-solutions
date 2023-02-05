# Convert number to reversed array of digits
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

digitize <- function(n){
  as.numeric(rev(unlist(strsplit(as.character(n), NULL))))
}


# Tests
test_that('Basic tests', {
  expect_equal(digitize(35231),c(1,3,2,5,3))
  expect_equal(digitize(23582357),c(7,5,3,2,8,5,3,2))
  expect_equal(digitize(984764738),c(8,3,7,4,6,7,4,8,9))
  expect_equal(digitize(45762893920),c(0,2,9,3,9,8,2,6,7,5,4))
  expect_equal(digitize(548702838394),c(4,9,3,8,3,8,2,0,7,8,4,5))
  expect_equal(digitize(0),c(0))
})