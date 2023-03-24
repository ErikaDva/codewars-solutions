# Returning Strings
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function greet(name)
   "Hello, $(name) how are you doing today?"
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact greet("Ryan") --> "Hello, Ryan how are you doing today?"
    @fact greet("Shingles") --> "Hello, Shingles how are you doing today?"
  end
end