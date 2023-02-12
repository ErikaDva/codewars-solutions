# Get Planet Name By ID
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def get_planet_name(id):
    name=""
    match id:
        case 1: name = "Mercury"
        case 2: name = "Venus"
        case 3: name = "Earth"
        case 4: name = "Mars"
        case 5: name = "Jupiter"
        case 6: name = "Saturn"
        case 7: name = "Uranus"  
        case 8: name = "Neptune"
    return name

# Solution 2
def get_planet_name(id):
    return {
        1: "Mercury",
        2: "Venus",
        3: "Earth",
        4: "Mars",
        5: "Jupiter",
        6: "Saturn",
        7: "Uranus",
        8: "Neptune",
    }.get(id, None)

# Solution 3
def get_planet_name(id):
    planets = {
        1: "Mercury",
        2: "Venus",
        3: "Earth",
        4: "Mars",
        5: "Jupiter",
        6: "Saturn",
        7: "Uranus", 
        8: "Neptune",
    }
    return planets[id]


# Tests
import codewars_test as test
from solution import get_planet_name

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(get_planet_name(2), 'Venus')
        test.assert_equals(get_planet_name(5), 'Jupiter')
        test.assert_equals(get_planet_name(3), 'Earth')
        test.assert_equals(get_planet_name(4), 'Mars')
        test.assert_equals(get_planet_name(8), 'Neptune')
        test.assert_equals(get_planet_name(1), 'Mercury')