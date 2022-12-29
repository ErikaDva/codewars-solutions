# Short Long Short
# Language: R
# Version 3.4.1
# Difficulty: 8 kyu

solution <- function(a, b) {
  ifelse(nchar(a) < nchar(b), paste0(a, b, a), paste0(b, a, b))
}


# Tests
library(stringr)

test_that("example test cases", {
   expect_equal(solution('45', '1'), '1451')
   expect_equal(solution('13', '200'), '1320013')
   expect_equal(solution('Soon', 'Me'), 'MeSoonMe')
   expect_equal(solution('U', 'False'), 'UFalseU')
})