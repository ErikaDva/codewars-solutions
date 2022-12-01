# Square Every Digit
# Langugage: Python
# Difficulty: 7 kyu

# Solution 1
def square_digits(num):
    split_num = [int(x) for x in str(num)]
    result = ''
    for n in split_num:
        result += str(n ** 2)
    return int(result)

# More concise alternative to Solution 1
def square_digits(num):
    result = ''
    for x in str(num):
        result += str(int(x) ** 2)
    return int(result)

# Tests
import codewars_test as test
from solution import square_digits

@test.describe("Premade tests: ")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(square_digits(9119), 811181)
        test.assert_equals(square_digits(0), 0)