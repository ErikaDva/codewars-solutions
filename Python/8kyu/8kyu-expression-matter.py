# Expression Matter
# Language: Python
# Version 3.10
# Difficulty: 8 kyu

# Solution 1
def expression_matter(a, b, c):
    A = a * (b + c)
    B = a * b * c
    C = a + b * c
    D = (a + b) * c
    E = a + b + c
    return max(A, B, C, D, E)

# Refactored Solution 1
def expression_matter(a, b, c):
    return max(a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c)


# Tests
import codewars_test as test
from solution import expression_matter

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(expression_matter(2, 1, 2), 6)
        test.assert_equals(expression_matter(2, 1, 1), 4)
        test.assert_equals(expression_matter(2, 2, 4), 16)
        test.assert_equals(expression_matter(3, 3, 3), 27)
        test.assert_equals(expression_matter(1, 1, 1), 3)
        test.assert_equals(expression_matter(1, 2, 3), 9)
        test.assert_equals(expression_matter(1, 3, 1), 5)
        test.assert_equals(expression_matter(2, 2, 2), 8)
        test.assert_equals(expression_matter(5, 1, 3), 20)
        test.assert_equals(expression_matter(3, 5, 7), 105)
        test.assert_equals(expression_matter(5, 6, 1), 35)
        test.assert_equals(expression_matter(1, 6, 1), 8)
        test.assert_equals(expression_matter(2, 6, 1), 14)
        test.assert_equals(expression_matter(6, 7, 1), 48)
        test.assert_equals(expression_matter(2, 10, 3), 60)
        test.assert_equals(expression_matter(1, 8, 3), 27)
        test.assert_equals(expression_matter(9, 7, 2), 126)
        test.assert_equals(expression_matter(1, 1, 10), 20)
        test.assert_equals(expression_matter(9, 1, 1), 18)
        test.assert_equals(expression_matter(10, 5, 6), 300)
        test.assert_equals(expression_matter(1, 10, 1), 12)