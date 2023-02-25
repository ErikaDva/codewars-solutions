# Parse nice int from char problem
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def get_age(age):
    return int(age.split(" ")[0])

# Solution 2
def get_age(age):
    return int(age[0])


# Tests
import codewars_test as test
from solution import get_age

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(get_age("2 years old"), 2)
        test.assert_equals(get_age("4 years old"), 4)
        test.assert_equals(get_age("5 years old"), 5)
        test.assert_equals(get_age("7 years old"), 7)