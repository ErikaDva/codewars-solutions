# Short Long Shor
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def solution(a, b):
    return a + b + a if len(a) < len(b) else b + a + b


# Tests
import codewars_test as test
from solution import solution

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(solution('45', '1'), '1451')
        test.assert_equals(solution('13', '200'), '1320013')
        test.assert_equals(solution('Soon', 'Me'), 'MeSoonMe')
        test.assert_equals(solution('U', 'False'), 'UFalseU')