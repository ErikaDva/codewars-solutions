# Convert a Boolean to a String
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function boolean2string(b::Bool)::String
  string(b)
end


# Tests
using FactCheck

facts("Some sample test cases") do
  @fact boolean2string(true) --> "true"
  @fact boolean2string(false) --> "false"
end