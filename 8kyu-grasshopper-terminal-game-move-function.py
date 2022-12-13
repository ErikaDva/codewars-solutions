# Grasshopper - Terminal game move function
# Language: Python
# Version 3.10
# Difficulty: 8 kyu

def move(position, roll):
    return position + roll * 2


# Tests
import codewars_test as test
from solution import move

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(move(0, 4), 8)
        test.assert_equals(move(3, 6), 15)
        test.assert_equals(move(2, 5), 12)