# Sort Numbers
# Difficulty: 7 kyu

solution <- function(nums) {
  sort(nums)
}


# Test

test_that("sample test", {
   expect_equal(solution(c(1,2,3,10,5)), c(1,2,3,5,10))
})