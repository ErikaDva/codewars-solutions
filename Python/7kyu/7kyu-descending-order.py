# Descending Order
# Language: Python
# Version: 3.10
# Difficulty: 7 kyu

# Solution 1
def descending_order(num):
	num_list = [int(x) for x in str(num)]
	num_list.sort(reverse = True)
	return int("".join(map(str, num_list)))

# Solution 2 (more concise)
def descending_order(num):
    return int("".join(sorted(str(num), reverse = True)))


# Tests
import codewars_test as test

try:
    from solution import Descending_Order as descending_order
except ImportError:
    from solution import descending_order

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(descending_order(0), 0)
        test.assert_equals(descending_order(15), 51)
        test.assert_equals(descending_order(123456789), 987654321)