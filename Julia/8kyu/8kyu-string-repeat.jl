# String repeat
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function repeatstr(n, s)
  return s^n
end


# Tests
using FactCheck

facts("Tests") do
  context("Basic tests") do
    @fact repeatstr(3, "*") --> "***"
    @fact repeatstr(5, "#") --> "#####"
    @fact repeatstr(2, "ha ") --> "ha ha "
  end
end