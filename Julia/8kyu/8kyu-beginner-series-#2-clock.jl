# Beginner Series #2 Clock
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function past(h, m, s)
  (h * 3600 + m * 60 + s) * 1000
end


# Tests
using FactCheck

facts("Tests") do
  context("Examples") do
    @fact past(0, 1, 1) --> 61000
    @fact past(1, 1, 1) --> 3661000
    @fact past(0, 0, 0) --> 0
    @fact past(1, 0, 1) --> 3601000
    @fact past(1, 0, 0) --> 3600000
  end
end