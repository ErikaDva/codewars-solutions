# Convert a Number to a String!
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function numbertostring(num)
    string(num)
end


# Tests
using FactCheck

facts("Fixed Tests") do
  @fact numbertostring(67) --> "67"
  @fact numbertostring(79585) --> "79585"
  @fact numbertostring(79585) --> not(79585)
  @fact numbertostring(1+2) --> "3"
  @fact numbertostring(1-2) --> "-1"
end