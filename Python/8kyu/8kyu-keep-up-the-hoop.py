# Keep up the hoop
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def hoop_count(n):
    return "Great, now move on to tricks" if n >= 10 else "Keep at it until you get it"


# Tests
import codewars_test as test

try:
    from solution import hoopCount as hoop_count
except ImportError:
    from solution import hoop_count

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(hoop_count(3),"Keep at it until you get it" ) 
        test.assert_equals(hoop_count(11),"Great, now move on to tricks" )