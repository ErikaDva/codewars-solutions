# Calculate average
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function find_average(array)
  if length(array) == 0
    return 0
  else
    return sum(array) / length(array)
  end
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact find_average([1,1,1]) --> 1
    @fact find_average([1,2,3]) --> 2
    @fact find_average([1,2,3,4]) --> 2.5
    @fact find_average([]) --> 0
  end
end