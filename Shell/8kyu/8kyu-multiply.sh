# Multiply
# Language: Shell
# Version: bash
# Difficulty: 8 kyu

# Solution 1

#!/bin/bash -e
a=$1
b=$2
echo $((a*b))

# Refactored Solution 1

#!/bin/bash -e
echo $(($1*$2))


# Tests
test1 = run_shell args: [3,4]
a=rand(0..100)
b=rand(0..100)
test2 = run_shell args: [a,b]

describe "Example Tests" do
  it "Multiple with static arguments" do
    expect(test1).to eq('12')
  end
  it "Multiply with random arguments" do
    expect(test2).to eq((a*b).to_s)
  end
end