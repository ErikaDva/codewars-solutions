# Twice as old
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

twice_as_old <- function(dad_years_old, son_years_old){
   abs(son_years_old * 2 - dad_years_old)
}


# Tests
test_that('Basic tests', {
  expect_equal(twice_as_old(36,7) , 22)
  expect_equal(twice_as_old(55,30) , 5)
  expect_equal(twice_as_old(42,21) , 0)
  expect_equal(twice_as_old(22,1) , 20)
  expect_equal(twice_as_old(29,0) , 29)
})