# Reversed Strings
# Difficulty: 8 kyu

def solution(string):
    return string[::-1]


# Tests

import codewars_test as test
from solution import solution

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(solution('world'), 'dlrow')
        test.assert_equals(solution('hello'), 'olleh')
        test.assert_equals(solution(''), '')
        test.assert_equals(solution('h'), 'h')