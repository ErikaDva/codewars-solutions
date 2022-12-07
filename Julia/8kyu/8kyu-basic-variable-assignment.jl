# Basic variable assignment
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

a = "code"
b = "wa.rs"
name = string(a, b)


# Tests
using FactCheck

facts("Test") do
  context("Testing for basic tests") do
    @fact name --> "codewa.rs"
  end
end