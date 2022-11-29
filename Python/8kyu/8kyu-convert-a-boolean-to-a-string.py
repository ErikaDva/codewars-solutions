# Convert a Boolean to a String
# Language: Python
# Difficulty: 8 kyu

def boolean_to_string(b):
    return str(b)


# Tests
import codewars_test as test
from solution import boolean_to_string

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(boolean_to_string(True), "True")
        test.assert_equals(boolean_to_string(False), "False")