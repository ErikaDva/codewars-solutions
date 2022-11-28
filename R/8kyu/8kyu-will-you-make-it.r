# Will you make it?
# Language: R
# Difficulty: 8 kyu

# Solution 1
zero_fuel <- function(distance, mpg, fuel_left) {
  
  if (distance - mpg * fuel_left <= 0){
    return(TRUE)
  }else{
    return(FALSE)
  }
  
}

# Solution 2 (more concise approach)
zero_fuel <- function(distance, mpg, fuel_left) {
  distance <= fuel_left * mpg
}


# Tests
test_that('basic tests', {
  expect_equal(zero_fuel(50, 25, 2), TRUE)
  expect_equal(zero_fuel(60, 30, 3), TRUE)
  expect_equal(zero_fuel(70, 25, 1), FALSE)
  expect_equal(zero_fuel(100, 25, 3), FALSE)
})