# Abbreviate a Two Word Name
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function abbrevname(name)
    split_name = split(name, " ")
    initials = getindex.(split_name, Ref(1:1))
    uppercase(join(initials, '.'))
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact abbrevname("Sam Harris") --> "S.H"
    @fact abbrevname("Patrick Feenan") --> "P.F"
    @fact abbrevname("Evan Cole") --> "E.C"
    @fact abbrevname("P Favuzzi") --> "P.F"
    @fact abbrevname("David Mendieta") --> "D.M"
    @fact abbrevname("george clooney") --> "G.C"
    @fact abbrevname("marky mark") --> "M.M"
  end
end