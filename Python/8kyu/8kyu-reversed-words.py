# Reversed Words
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def reverse_words(s):
    return " ".join(reversed(s.split(" ")))

# Refactored Solution 1
def reverseWords(s):
    return " ".join(s.split(" ")[::-1])


# Tests
import codewars_test as test

try:
    from solution import reverseWords as reverse_words
except ImportError:
    from solution import reverse_words

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it("Basic Tests")
    def basic_tests():
        test.assert_equals(reverse_words("hello world!"), "world! hello")