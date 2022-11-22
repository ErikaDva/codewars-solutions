# Is he gonna survive?
# Difficulty: 8 kyu

# Solution 1

hero <- function(bullets, dragons) {
  
  n_bullets  = dragons * 2
  
  if (bullets >= n_bullets) {
    return(TRUE)
  }else{
    return(FALSE)
  }
}

# Solution 2

hero <- function(bullets, dragons) {
  return(dragons * 2 <= bullets)
}


# Test

test_that("Sample tests", {
  expect_equal(hero(10, 5), TRUE)
  expect_equal(hero(7, 4), FALSE)
  expect_equal(hero(4, 5), FALSE)
  expect_equal(hero(100, 40), TRUE)
  expect_equal(hero(1500, 751), FALSE)
  expect_equal(hero(0, 1), FALSE)
})