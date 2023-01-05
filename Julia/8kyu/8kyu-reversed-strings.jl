# Reversed Strings
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function solution(phrase)
    reverse(phrase)
end


# Tests
using FactCheck

facts("Testing basics") do
  @fact solution("world") --> "dlrow"
end