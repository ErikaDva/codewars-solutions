# Transportation on vacation
# Difficulty: 8 kyu

# Solution 1
def rental_car_cost(d):
    if d >= 7:
        return d * 40 - 50
    elif d >= 3:
        return d * 40 - 20
    else:
        return d * 40

# Solution 2 (more clean)
def rental_car_cost(d):
    price = d * 40

    if d >= 7:
        price -= 50
    elif d >= 3:
        price -= 20
    
    return price

# Solution 3 (one line)
def rental_car_cost(d):
    return d * 40 - (50 if d >= 7 else (20 if d >= 3 else 0))


# Tests

import codewars_test as test
from solution import rental_car_cost

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(rental_car_cost(1),40)
        test.assert_equals(rental_car_cost(4),140)
        test.assert_equals(rental_car_cost(7),230)
        test.assert_equals(rental_car_cost(8),270)
