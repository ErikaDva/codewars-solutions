# Transportation on vacation
# Difficulty: 8 kyu

rental_car_cost <- function(d){
  if (d >= 7){
    d * 40 - 50
  }else if (d >= 3){
    d * 40 - 20
  }else{
    d * 40
  }
}


# Test

test_that('Basic tests', {
  expect_equal(rental_car_cost(1),40)
  expect_equal(rental_car_cost(4),140)
  expect_equal(rental_car_cost(7),230)
  expect_equal(rental_car_cost(8),270)
})