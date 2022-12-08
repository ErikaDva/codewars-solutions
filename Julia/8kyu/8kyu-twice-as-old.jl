# Twice as old
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function twiceasold(dadyearsold, sonyearsold)
  abs(sonyearsold * 2 - dadyearsold)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact twiceasold(36,7) --> 22
    @fact twiceasold(55,30) --> 5
    @fact twiceasold(42,21) --> 0
    @fact twiceasold(22,1) --> 20
    @fact twiceasold(29,0) --> 29
  end
end