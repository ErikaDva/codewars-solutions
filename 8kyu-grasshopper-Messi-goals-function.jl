# Grasshopper - Messi goals function
# Language: Julia
# Version 1.0
# Difficulty: 8 kyu

function goals(laLigaGoals, copaDelReyGoals, championsLeagueGoals) 
  laLigaGoals + copaDelReyGoals + championsLeagueGoals
end


# Tests
using FactCheck

facts("goal") do
  context("Sample Tests") do
    @fact goals(0, 0, 0) --> 0
    @fact goals(43, 10, 5) --> 58
  end
end