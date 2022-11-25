# Square(n) Sum
# Difficulty: 8 kyu

def square_sum(numbers):
    return sum([n ** 2 for n in numbers])

# OR

def square_sum(numbers):
    return sum(n ** 2 for n in numbers)


# Tests
import codewars_test as test
from solution import square_sum

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(square_sum([1,2]), 5)
        test.assert_equals(square_sum([0, 3, 4, 5]), 50)
        test.assert_equals(square_sum([]), 0)
        test.assert_equals(square_sum([-1,-2]), 5)
        test.assert_equals(square_sum([-1,0,1]), 2)