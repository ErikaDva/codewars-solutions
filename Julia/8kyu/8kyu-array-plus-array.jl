# Array plus array
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function arrayplusarray(arr1, arr2)
  sum(vcat(arr1, arr2))
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact arrayplusarray([1, 2, 3], [4, 5, 6]) --> 21
    @fact arrayplusarray([-1, -2, -3], [-4, -5, -6]) --> -21
    @fact arrayplusarray([0, 0, 0], [4, 5, 6]) --> 15
    @fact arrayplusarray([100, 200, 300], [400, 500, 600]) --> 2100
  end
end