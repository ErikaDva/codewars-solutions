# You Can't Code Under Pressure #1
# Language: Python
# Difficulty: 8 kyu

def double_integer(i):
    return i * 2


# Tests
import codewars_test as test

@test.describe('Tests')
def tests():
    @test.it('Sample Test Case')
    def sample_test_case():
        test.assert_equals(double_integer(2), 4);
        test.assert_equals(double_integer(4), 8);
        test.assert_equals(double_integer(-10), -20);
        test.assert_equals(double_integer(0), 0);
        test.assert_equals(double_integer(100), 200);