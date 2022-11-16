# Convert a String to a Number!

def string_to_number(s):
    return int(s)

# Test

import codewars_test as test
from solution import string_to_number

@test.describe("string_to_number")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(string_to_number("1234"), 1234)
        test.assert_equals(string_to_number("605"), 605)
        test.assert_equals(string_to_number("1405"), 1405)
        test.assert_equals(string_to_number("-7"), -7)
