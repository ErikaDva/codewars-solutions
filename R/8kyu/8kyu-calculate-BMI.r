# Calculate BMI
# Difficulty: 8 kyu

bmi <- function(weight, height) {
  bmi = weight/(height^2)
  
  if (bmi <= 18.5){
    return("Underweight")
  }
  if (bmi <= 25.0){
    return("Normal")
  }
  if (bmi <= 30.0){
    return("Overweight")
  }
  if (bmi > 30.0){
    return("Obese")
  }
}


# Test

test_that("test", {
  expect_equal(bmi(80.0, 1.80), "Normal");
})