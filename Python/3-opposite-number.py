# Opposite number
# Difficulty: 8 kyu

def opposite(number):
  return -number
  
# Test

import codewars_test as test
from solution import opposite

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(opposite(1),-1)
        test.assert_equals(opposite(25.6), -25.6)
        test.assert_equals(opposite(0), 0)
        test.assert_equals(opposite(1425.2222), -1425.2222)
        test.assert_equals(opposite(-3.1458), 3.1458)
        test.assert_equals(opposite(-95858588225),95858588225)
