# Is this my tail?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def correct_tail(body, tail):
    return tail == body[len(body)-1]

# Refactored Solution 1
def correct_tail(body, tail):
    return tail == body[-1]

# Solution 2
def correct_tail(body, tail):
    return body.endswith(tail)


# Tests
import codewars_test as test
from solution import correct_tail

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(correct_tail("Fox", "x"), True)
        test.assert_equals(correct_tail("Rhino", "o"), True)
        test.assert_equals(correct_tail("Meerkat", "t"), True)
        test.assert_equals(correct_tail("Emu", "t"), False)
        test.assert_equals(correct_tail("Badger", "s"), False)
        test.assert_equals(correct_tail("Giraffe", "d"), False)