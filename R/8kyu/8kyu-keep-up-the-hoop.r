# Keep up the hoop
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

hoop_count <- function(n){
  ifelse(n >= 10, "Great, now move on to tricks", "Keep at it until you get it")
}


# Tests
test_that('Basic tests', {
  expect_equal(hoop_count(6),"Keep at it until you get it" ) 
  expect_equal(hoop_count(10),"Great, now move on to tricks" ) 
  expect_equal(hoop_count(22), "Great, now move on to tricks")
})