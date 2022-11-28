# Remove exclamation marks
# Language: R
# Difficulty: 8 kyu

def remove_exclamation_marks(s):
    return s.replace("!", "")


# Tests
import codewars_test as test
from solution import remove_exclamation_marks

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(remove_exclamation_marks("Hello World!"), "Hello World")
        test.assert_equals(remove_exclamation_marks("Hello World!!!"), "Hello World")
        test.assert_equals(remove_exclamation_marks("Hi! Hello!"), "Hi Hello")
        test.assert_equals(remove_exclamation_marks(""), "")
        test.assert_equals(remove_exclamation_marks("Oh, no!!!"), "Oh, no")