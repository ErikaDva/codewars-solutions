# Keep Hydrated!
# Language: Julia
# Version: 1.5
# Difficulty: 8 kyu

function litres(time)
  floor(time * 0.5)
end


# Tests
using FactCheck
facts("Basic tests") do
  @fact litres(2) --> 1
  @fact litres(1.4) --> 0
  @fact litres(12.3) --> 6
  @fact litres(0.82) --> 0
  @fact litres(11.8) --> 5
  @fact litres(1787) --> 893
  @fact litres(0) --> 0
end