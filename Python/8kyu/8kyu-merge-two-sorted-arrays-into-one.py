# Merge two sorted arrays into one
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def merge_arrays(arr1, arr2):
    return sorted(map(int, list(set(arr1 + arr2))))

# Solution 2 (refactored)
def merge_arrays(arr1, arr2):
    return sorted(set(arr1 + arr2))


# Tests
import codewars_test as test
from solution import merge_arrays

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(merge_arrays([1,2,3,4], [5,6,7,8]), [1,2,3,4,5,6,7,8])
        test.assert_equals(merge_arrays([1,3,5,7,9], [10,8,6,4,2]), [1,2,3,4,5,6,7,8,9,10])
        test.assert_equals(merge_arrays([1,3,5,7,9,11,12], [1,2,3,4,5,10,12]), [1,2,3,4,5,7,9,10,11,12])