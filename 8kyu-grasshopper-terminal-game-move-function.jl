# Grasshopper - Terminal game move function
# Language: Julia
# Version 1.0
# Difficulty: 8 kyu

function move(pos, roll)
  pos + roll * 2
end


# Tests
using FactCheck
facts("Basic tests") do
  @fact move(0, 4) --> 8
  @fact move(3, 6) --> 15
  @fact move(2, 5) --> 12
end