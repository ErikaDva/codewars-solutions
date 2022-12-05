# Sentence Smash
# Language: R
# Difficulty: 8 kyu

smash <- function(words){
  paste(words, collapse = " ")
}


# Tests
test_that("Sample Tests", {
  expect_equal(smash(NULL), "")
  expect_equal(smash(c("hello")), "hello")
  expect_equal(smash(c("hello", "world")), "hello world")
})