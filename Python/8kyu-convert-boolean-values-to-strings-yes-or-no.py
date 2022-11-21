# Convert boolean values to strings 'Yes' or 'No'
# Difficulty: 8 kyu

# Solution 1
def bool_to_word(boolean):
    if boolean:
        return "Yes"
    else:
        return "No"

# Solution 2 (more concise)
def bool_to_word(boolean):
    return "Yes" if boolean else "No"

# Test

import codewars_test as test
from solution import bool_to_word

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(bool_to_word(True), 'Yes')
        test.assert_equals(bool_to_word(False), 'No')
    