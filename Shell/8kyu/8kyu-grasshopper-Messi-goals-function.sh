# Grasshopper - Messi goals function
# Language: Shell
# Version: bash
# Difficulty: 8 kyu

laLigaGoals=$1
copaDelReyGoals=$2
championsLeagueGoals=$3

echo $((laLigaGoals + copaDelReyGoals + championsLeagueGoals))


# Tests
def testing(a, b, c, e)
  it "goals(#{a}, #{b}, #{c})" do expect(run_shell args: [a, b, c]).to eq e.to_s end
end

describe "Basic Tests" do
  testing(0, 0, 0, 0)
  testing(43, 10, 5, 58)
end