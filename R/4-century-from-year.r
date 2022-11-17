# Century From Year
# Difficulty: 8 kyu

# Solution 1
century <- function(year) {
  if (year %% 100 == 0){
    return(year %/% 100)
  }
  return(year %/% 100 + 1)
}

# Solution 2

century <- function(year) {
  return((year + 99) %/% 100)
}

# Test
test_that("Sample tests", {
  expect_equal(century(1705), 18)
  expect_equal(century(1900), 19)
  expect_equal(century(1601), 17)
  expect_equal(century(2000), 20)
  expect_equal(century(89), 1)
})

year + 99 %% 100

year + 99

2099 %/% 100
