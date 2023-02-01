# Sum of positive
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function positivesum(arr::Array{Int})
  sum(x for x in arr if x > 0)
end


# Tests
using FactCheck

facts("fixed tests") do
  @fact positivesum([1,2,3,4,5]) --> 15
  @fact positivesum([1,-2,3,4,5]) --> 13
  @fact positivesum([-1,2,3,4,-5]) --> 9
  @fact positivesum(Int[]) --> 0
  @fact positivesum([-1,-2,-3,-4,-5]) --> 0
end