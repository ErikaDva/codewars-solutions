# Will you make it?
# Language: Python
# Difficulty: 8 kyu

# Solution 1
def zero_fuel(distance_to_pump, mpg, fuel_left):
    return True if distance_to_pump - mpg * fuel_left <= 0 else False

# Solution 2 (more concise approach)
def zeroFuel(distance_to_pump, mpg, fuel_left):
    return distance_to_pump <= mpg * fuel_left


# Tests
import codewars_test as test

try: 
    from solution import zeroFuel as zero_fuel
except ImportError: 
    from solution import zero_fuel 

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(zero_fuel(50, 25, 2), True)
        test.assert_equals(zero_fuel(100, 50, 1), False)