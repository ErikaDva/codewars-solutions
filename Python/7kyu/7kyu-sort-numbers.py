# Sort Numbers
# Difficulty: 7 kyu

def solution(nums):
    return sorted(nums) if nums else []


# Test

import codewars_test as test
from solution import solution

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(solution([1,2,3,10,5]), [1,2,3,5,10])
        test.assert_equals(solution(None), [])
        test.assert_equals(solution([]), [])
        test.assert_equals(solution([20,2,10]), [2,10,20])
        test.assert_equals(solution([2,20,10]), [2,10,20])