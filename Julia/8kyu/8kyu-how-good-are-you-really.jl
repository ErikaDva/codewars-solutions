# How good are you really?
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1
function better_than_average(classPoints, yourPoints)
  ifelse(yourPoints > sum(classPoints) / length(classPoints), true, false)
end

# Solution 2
function better_than_average(classPoints, yourPoints)
  yourPoints >= sum(classPoints) / length(classPoints)
end


# Tests
using FactCheck
facts("Fixed tests") do
    @fact better_than_average([2, 3], 5) --> true
    @fact better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75) --> true
    @fact better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69) --> true
    @fact better_than_average([41, 75, 72, 56, 80, 82, 81, 33], 50) --> false
    @fact better_than_average([29, 55, 74, 60, 11, 90, 67, 28], 21) --> false
end