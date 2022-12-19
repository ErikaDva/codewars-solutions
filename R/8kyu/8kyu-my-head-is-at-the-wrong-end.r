# My head is at the wrong end!
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

fix_the_meerkat <- function(vec){
  rev(vec)
}


# Tests
test_that('Basic tests', {
  expect_equal(fix_the_meerkat(c("tail", "body", "head")), c("head", "body", "tail"))
  expect_equal(fix_the_meerkat(c("tails", "body", "heads")), c("heads", "body", "tails"))
  expect_equal(fix_the_meerkat(c("bottom", "middle", "top")), c("top", "middle", "bottom"))
  expect_equal(fix_the_meerkat(c("lower legs", "torso", "upper legs")), c("upper legs", "torso", "lower legs"))
  expect_equal(fix_the_meerkat(c("ground", "rainbow", "sky")), c("sky", "rainbow", "ground"))
})