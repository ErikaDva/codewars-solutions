# Pillars
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1 (similar to R)
function pillars(numpill, dist, width)
    ifelse(numpill > 1, dist * 100 * (numpill - 1) + width * (numpill - 2), 0)
end

# Solution 2  (similar to Python)
function pillars(numpill, dist, width)
    dist * 100 * (numpill - 1) + width * (numpill - 2) * (numpill > 1)
end

# Solution 3 (Julia specific)
function pillars(numpill, dist, width)
    numpill <= 1 ? 0 : dist * 100 * (numpill - 1) + width * (numpill - 2)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Testing for number of pillars: 1, distance: 10 m and width: 10 cm") do
    @fact pillars(1, 10, 10) --> 0
  end
  context("Testing for number of pillars: 2, distance: 20 m and width: 25 cm") do
    @fact pillars(2, 20, 25) --> 2000
  end
  context("Testing for number of pillars: 11, distance: 15 m and width: 30 cm") do
    @fact pillars(11, 15, 30) --> 15270
  end
end