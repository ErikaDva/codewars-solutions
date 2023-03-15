# Is n divisible by x and y?
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1
function isdivisible(n, x, y)
  mod(n, x) == 0 && mod(n, y) == 0
end

# Solution 2
function isdivisible(n, x, y)
  n % x == 0 && n % y == 0
end

# Tests
using FactCheck

facts("examples") do
  @fact isdivisible(3,3,4) --> false
  @fact isdivisible(12,3,4) --> true
  @fact isdivisible(8,3,4) --> false
  @fact isdivisible(48,3,4) --> true
end