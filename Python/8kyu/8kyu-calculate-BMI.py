# Calculate BMI
# Difficulty: 8 kyu

def bmi(weight, height):
    
    bmi = weight / (height ** 2)

    if bmi <= 18.5:
        return "Underweight"
    elif bmi <= 25.0:
        return "Normal"
    elif bmi <= 30.0:
        return "Overweight"
    else:
        return "Obese"


# Test

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(bmi(50, 1.80), "Underweight")
        test.assert_equals(bmi(80, 1.80), "Normal")
        test.assert_equals(bmi(90, 1.80), "Overweight")
        test.assert_equals(bmi(110, 1.80), "Obese")
        test.assert_equals(bmi(50, 1.50), "Normal")