# Reversed Strings
# Difficulty: 8 kyu

solution <- function(s){
  paste(rev(unlist(strsplit(s, NULL))), collapse = "")
}


# Tests

test_that("example", {
  expect_equal(solution('world'), 'dlrow')
  expect_equal(solution('hello'), 'olleh')
  expect_equal(solution(''), '')
  expect_equal(solution('h'), 'h')
})