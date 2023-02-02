# Square(n) Sum
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

# Solution 1

function squaresum(numbers)
    sum([n^2 for n in numbers])
end

# Solution 2
function squaresum(numbers)
    sum(numbers .^ 2)
end


# Tests
using FactCheck

facts("Sample tests") do
  @fact squaresum([1,2]) --> 5
  @fact squaresum([0, 3, 4, 5]) --> 50
  @fact squaresum(Int64[]) --> 0
end