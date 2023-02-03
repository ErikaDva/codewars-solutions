# Counting sheep...
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyus

# Solution 1
function countsheep(sheep) 
    count(sheep)
end

# Solution 2
function countsheep(sheep) 
    sum(sheep)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    array1 = [true, true, true, false, true, true, true, true, true, false, true, false, true, false, false, 
              true, true, true, true, true, false, false, true, true ]
    @fact countsheep(array1) --> 17
  end
end