# You Can't Code Under Pressure #1
# Language: Shell
# Version: bash
# Difficulty: 8 kyu

# $1 will be an integer. Double it and print it.
echo $(( $1 * 2 ))


# Tests
describe "tests" do
  it "fixed tests" do
    expect(run_shell args: ['2']).to eq('4')
    expect(run_shell args: ['4']).to eq('8')
    expect(run_shell args: ['-10']).to eq('-20')
    expect(run_shell args: ['0']).to eq('0')
    expect(run_shell args: ['100']).to eq('200')
  end
end
