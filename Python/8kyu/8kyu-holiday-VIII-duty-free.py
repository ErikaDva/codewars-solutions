# Holiday VIII - Duty Free
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def duty_free(price, discount, holiday_cost):
    return int(holiday_cost / (price * discount / 100))


# Tests
test.describe("Basic tests")
test.assert_equals(duty_free(12, 50, 1000), 166)
test.assert_equals(duty_free(17, 10, 500), 294)