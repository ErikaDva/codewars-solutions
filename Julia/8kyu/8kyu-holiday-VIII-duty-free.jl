# Holiday VIII - Duty Free
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function dutyfree(normprice, discount, hol)
    floor(hol / (normprice * discount / 100))
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact dutyfree(12, 50, 1000) --> 166
    @fact dutyfree(17, 10, 500) --> 294
    @fact dutyfree(24, 35, 3000) --> 357
    @fact dutyfree(1400, 35, 10000) --> 20
    @fact dutyfree(700, 26, 7000) --> 38
  end
end