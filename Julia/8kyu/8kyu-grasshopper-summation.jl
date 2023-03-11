# Grasshopper - Summation
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function summation(num)
  sum(1:num)
end


# Tests
using FactCheck

facts("summation") do
  context("should return the correct total") do
    @fact summation(1) --> 1
    @fact summation(8) --> 36
  end
end