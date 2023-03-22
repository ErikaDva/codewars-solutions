# Invert values
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function invert(arr)
  -arr
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact invert([1,2,3,4,5]) --> [-1,-2,-3,-4,-5]
    @fact invert([1,-2,3,-4,5]) --> [-1,2,-3,4,-5]
    @fact invert([0]) --> [0]
    @fact invert([-1,0,1]) --> [1,0,-1]
    @fact invert([]) --> []
  end
end