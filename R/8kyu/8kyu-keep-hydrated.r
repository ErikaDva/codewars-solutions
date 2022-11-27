# Keep Hydrated!
# Language: R
# Difficulty: 8 kyu

litres <- function(time) {
  floor(time * 0.5)
}


# Tests
expect_equal(litres(2), 1)
expect_equal(litres(1.4), 0)
expect_equal(litres(12.3), 6)
expect_equal(litres(0.82), 0)
expect_equal(litres(11.8), 5)
expect_equal(litres(1787), 893)
expect_equal(litres(0), 0)