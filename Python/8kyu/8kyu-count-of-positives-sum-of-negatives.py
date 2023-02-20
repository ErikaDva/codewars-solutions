# Count of positives / sum of negatives
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def count_positives_sum_negatives(arr):
    if len(arr) == 0:
        return []
    
    pos_count = sum([1 for n in arr if n > 0])
    neg_sum = sum([n for n in arr if n < 0])
    return [pos_count, neg_sum]


# Tests
import codewars_test as test
from solution import count_positives_sum_negatives

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]),[10,-65])
        test.assert_equals(count_positives_sum_negatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]),[8,-50])
        test.assert_equals(count_positives_sum_negatives([1]),[1,0])
        test.assert_equals(count_positives_sum_negatives([-1]),[0,-1])
        test.assert_equals(count_positives_sum_negatives([0,0,0,0,0,0,0,0,0]),[0,0])
        test.assert_equals(count_positives_sum_negatives([]),[])