# Is this my tail?
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function correcttail(body, tail)
  tail == last(body)
end


# Tests
using FactCheck

facts("Basic tests") do
  context("Should pass fixed tests") do
    @fact correcttail("Fox", 'x') --> true
    @fact correcttail("Rhino", 'o') --> true
    @fact correcttail("Meerkat", 't') --> true
    @fact correcttail("Emu", 't') --> false
    @fact correcttail("Badger", 's') --> false
    @fact correcttail("Giraffe", 'd') --> false
  end
end