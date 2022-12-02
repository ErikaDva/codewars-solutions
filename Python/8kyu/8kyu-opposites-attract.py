# Opposites Attract
# Language: Python
# Difficulty: 8 kyu

# Solution 1
def lovefunc( flower1, flower2 ):
    return flower1 % 2 != flower2 % 2

# Refactored Solution 1
def lovefunc( flower1, flower2 ):
    return (flower1 + flower2) % 2


# Tests
import codewars_test as test
from solution import lovefunc

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(lovefunc(1,4), True)
        test.assert_equals(lovefunc(2,2), False)
        test.assert_equals(lovefunc(0,1), True)
        test.assert_equals(lovefunc(0,0), False)