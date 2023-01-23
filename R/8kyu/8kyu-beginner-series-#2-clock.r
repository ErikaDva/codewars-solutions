# Beginner Series #2 Clock
# Language: R
# Version: 3.4.1
# Difficulty: 8 kyu

past <- function(h, m, s) {
    (h * 3600 + m * 60 + s) * 1000
}


# Tests
test_that("basic tests", {
    expect_equal(past(0, 1, 1), 61000)
    expect_equal(past(1, 1, 1), 3661000)
    expect_equal(past(0, 0, 0), 0)
    expect_equal(past(1, 0, 1), 3601000)
    expect_equal(past(1, 0, 0), 3600000)
})