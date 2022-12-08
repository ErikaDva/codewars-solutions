# Twice as old
# Language: Shell
# Version: bash
# Difficulty: 8 kyu


#!/bin/sh

dad_years_old=$1
son_years_old=$2

echo $(($1-$2*2)) | sed 's/-//'

exit


# Tests
describe "Solution" do
   it "Basic Tests" do
     output = run_shell args: [36,7]
     expect(output).to eq("22")
     output = run_shell args: [55,30]
     expect(output).to eq("5")
     output = run_shell args: [42,21]
     expect(output).to eq("0")
     output = run_shell args: [22,1]
     expect(output).to eq("20")
     output = run_shell args: [29,0]
     expect(output).to eq("29")
   end
end