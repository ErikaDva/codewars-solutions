# Highest and Lowest
# Difficulty: 7 kyu

def high_and_low(numbers):
    split_numbers = list(map(int, numbers.split(" ")))
    min_n = min(split_numbers)
    max_n = max(split_numbers)
    numbers = str(max_n) + " " + str(min_n)
    return numbers


# Test

import codewars_test as test
from solution import high_and_low

@test.describe("Example Tests")
def fixed_tests():
    @test.it('Test Case 1')
    def basic_test_cases():
        test.assert_equals(high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4"), "42 -9");
    @test.it('Test Case 2')
    def basic_test_cases():
        test.assert_equals(high_and_low("1 2 3"), "3 1");