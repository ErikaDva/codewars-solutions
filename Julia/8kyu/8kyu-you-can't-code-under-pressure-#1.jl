# You Can't Code Under Pressure #1
# Language: Julia
# Difficulty: 8 kyu

function double_integer(i)
  i * 2
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact double_integer(2) --> 4
    @fact double_integer(4) --> 8
    @fact double_integer(-10) --> -20
    @fact double_integer(0) --> 0
    @fact double_integer(100) --> 200
  end
end