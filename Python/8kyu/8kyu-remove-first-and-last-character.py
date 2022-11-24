# Remove First and Last Character
# Difficulty: 8 kyu

# Solution 1
def remove_char(s):
    return s[1:-1]

# Solution 2 (less concise)
def remove_char(s):
    return s[1:len(s)-1]


# Tests

import codewars_test as test
from solution import remove_char

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(remove_char('eloquent'), 'loquen')
        test.assert_equals(remove_char('country'), 'ountr')
        test.assert_equals(remove_char('person'), 'erso')
        test.assert_equals(remove_char('place'), 'lac')
        test.assert_equals(remove_char('ok'), '')
        test.assert_equals(remove_char('ooopsss'), 'oopss')
