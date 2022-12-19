# Capitalization and Mutability
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# solution 1
def capitalize_word(word):
    return word.capitalize()

# Solution 2
def capitalize_word(word):
    return word.title()


# Tests
import codewars_test as test

try:
    from solution import capitalizeWord as capitalize_word
except ImportError:
    from solution import capitalize_word

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(capitalize_word('word'), 'Word')
        test.assert_equals(capitalize_word('i'), 'I')
        test.assert_equals(capitalize_word('glasswear'), 'Glasswear')