# Return Negative
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

module Kata
  export makenegative
  function makenegative(number)
    -abs(number)
  end
end


# Tests
using FactCheck
facts("Sample tests") do
  @fact Kata.makenegative(42) --> -42
end