# Third Angle of a Triangle
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function otherangle(a, b)
  return 180 - a - b
end


# Tests
using FactCheck

facts("Sample tests") do
  @fact otherangle(30, 60) --> 90
  @fact otherangle(60, 60) --> 60
  @fact otherangle(43, 78) --> 59
  @fact otherangle(10, 20) --> 150
end