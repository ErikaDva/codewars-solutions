# Grasshopper - Terminal game move function
# Language: Shell
# Version: bash
# Difficulty: 8 kyu

position=$1
roll=$2
echo $((position + roll * 2))


# Tests
describe "Basic tests" do
  it "Testing for move(0, 4)" do expect(move(0, 4)).to eq 8 end
  it "Testing for move(3, 6)" do expect(move(3, 6)).to eq 15 end
  it "Testing for move(2, 5)" do expect(move(2, 5)).to eq 12 end
end