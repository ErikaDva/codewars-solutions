# Well of Ideas - Easy Version
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def well(x):
    good = x.count("good")
    
    if good > 0 and good <= 2:
        return "Publish!"
    elif good > 2:
        return "I smell a series!"
    else:
        return "Fail!"

# Improved Solution 1 to follow logical order
def well(x):
    good = x.count("good")

    if good == 0:
        return "Fail!"
    elif good <= 2:
        return "Publish!"
    else:
        return "I smell a series!"

# Tests
import codewars_test as test
from solution import well

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(well(['bad', 'bad', 'bad']), 'Fail!')
        test.assert_equals(well(['good', 'bad', 'bad', 'bad', 'bad']), 'Publish!')
        test.assert_equals(well(['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good']), 'I smell a series!')