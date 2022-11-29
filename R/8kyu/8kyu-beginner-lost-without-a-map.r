# Beginner - Lost Without a Map
# Language: R
# Difficulty: 8 kyu

maps <- function(v) {
  v * 2
}


# Tests
expect_equal(maps(c(1, 2, 3)), c(2, 4, 6))
expect_equal(maps(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)), c(0, 2, 4, 6, 8, 10, 12, 14, 16, 18))
expect_equal(maps(numeric()), numeric())