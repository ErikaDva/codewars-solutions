# Beginner Series #1 School Paperwork
# Language: Python
# Difficulty: 8 kyu


# Solution 1
def paperwork(n, m):
    if n < 0 or m < 0:
        return 0
    else:
        return n * m

# A shorter alternative to Solution 1
def paperwork(n, m):
    return n * m if n > 0 and m > 0 else 0


# Tests
import codewars_test as test
from solution import paperwork

@test.describe("Fixed Tests")
def basic_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(paperwork(5,5), 25, "Failed at Paperwork(5,5)")
        test.assert_equals(paperwork(-5,5), 0, "Failed at Paperwork(-5,5)")
        test.assert_equals(paperwork(5,-5), 0, "Failed at Paperwork(5,-5)")
        test.assert_equals(paperwork(-5,-5), 0, "Failed at Paperwork(-5,-5)")
        test.assert_equals(paperwork(5,0), 0, "Failed at Paperwork(5,0)")