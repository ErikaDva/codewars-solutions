# Beginner Series #4 Cockroach
# Langugage: Python
# Version: 3.10
# Difficulty: 8 kyu

def cockroach_speed(s):
    return s // 0.036


# Tests
import codewars_test as test
from solution import cockroach_speed

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(cockroach_speed(1.08),30)
        test.assert_equals(cockroach_speed(1.09),30)
        test.assert_equals(cockroach_speed(0),0)