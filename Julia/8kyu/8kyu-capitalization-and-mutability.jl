# Capitalization and Mutability
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function capitalizeword(word)
  uppercasefirst(word)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact capitalizeword("word") --> "Word"
    @fact capitalizeword("i") --> "I"
    @fact capitalizeword("glasswear") --> "Glasswear"
  end
end