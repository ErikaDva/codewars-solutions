# FIXME: Replace all dots
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 2
import re
def replace_dots(str):
    return re.sub(r"\.", "-", str)

# Alternative solution without importing re
def replace_dots(string):
    return string.replace('.', '-')


# Tests
import codewars_test as test
from solution import replace_dots

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(replace_dots(""), "")
        test.assert_equals(replace_dots("no dots"), "no dots")
        test.assert_equals(replace_dots("one.two.three"), "one-two-three")
        test.assert_equals(replace_dots("........"), "--------")