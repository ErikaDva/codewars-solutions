# Beginner Series #1 School Paperwork
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function paperwork(n, m)
    ifelse(n < 0 || m < 0, 0, n * m)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact paperwork(5,5) --> 25 "Failed at paperwork(5,5)"
    @fact paperwork(5,-5) --> 0 "Failed at paperwork(5,-5)"
    @fact paperwork(-5,-5) --> 0 "Failed at paperwork(-5,-5)"
    @fact paperwork(-5,5) --> 0 "Failed at paperwork(-5,5)"
    @fact paperwork(5,0) --> 0 "Failed at paperwork(5,0)"
  end
end