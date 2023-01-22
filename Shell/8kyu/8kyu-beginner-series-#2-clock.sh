# Beginner Series #2 Clock
# Language: Shell
# Version: bash
# Difficulty: 8 kyu

h=$1
m=$2
s=$3

echo $(( ($h * 3600 + $m * 60 + $s) * 1000 ))


# Tests
def tester(h, m, s, e)
  it "past(#{h}, #{m}, #{s})" do
    expect(run_shell(args: [h, m, s]).to_f).to be e.to_f
  end
end

describe "basic tests" do
  tester(0, 1, 1, 61000)
  tester(1, 1, 1, 3661000)
  tester(0, 0, 0, 0)
  tester(1, 0, 1, 3601000)
  tester(1, 0, 0, 3600000)
end