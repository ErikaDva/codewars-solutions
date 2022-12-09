# Reversed Words
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

solution <- function(sentence){
  paste(rev(unlist(strsplit(sentence, " "))), collapse = " ")
}


# Tests
test_that('Basic tests', {
  expect_equal(solution("hello world!"), "world! hello")
  expect_equal(solution("yoda doesn't speak like this"), "this like speak doesn't yoda")
  expect_equal(solution("foobar"), "foobar")
  expect_equal(solution("kata editor"), "editor kata")
  expect_equal(solution("row row row your boat"), "boat your row row row")
})