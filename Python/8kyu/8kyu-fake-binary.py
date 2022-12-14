# Fake Binary
# Difficulty: 8 kyu

# Solution 1
def fake_bin(x):
  binary = ""

  for number in x:
    if int(number) >= 5:
      binary += "1"
    if int(number) < 5:
      binary += "0"
    
  return binary

# Alternative solution 2 (concise, similar to chartr in R)
def fake_bin(x):
    return x.translate(str.maketrans('0123456789', '0000011111'))

# Alternative solution 3 (one line, concise & clever)
def fake_bin(x):
    return ''.join('0' if c < '5' else '1' for c in x)


# Tests

import codewars_test as test
from solution import fake_bin

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        tests = [
            # [expected, input]
            ["01011110001100111", "45385593107843568"],
            ["101000111101101", "509321967506747"],
            ["011011110000101010000011011", "366058562030849490134388085"],
            ["01111100", "15889923"],
            ["100111001111", "800857237867"],
        ]
        
        for exp, inp in tests:
            test.assert_equals(fake_bin(inp), exp)
