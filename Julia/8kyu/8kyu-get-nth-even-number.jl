# Get Nth Even Number
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function ntheven(n)
  n * 2 - 2
end


# Tests
using FactCheck
facts("Fixed tests") do
  @fact ntheven(1) --> 0
  @fact ntheven(2) --> 2
  @fact ntheven(3) --> 4
  @fact ntheven(100) --> 198
  @fact ntheven(1298734) --> 2597466
end