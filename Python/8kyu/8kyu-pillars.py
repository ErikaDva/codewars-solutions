# Pillars
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def pillars(num_pill, dist, width):
    return 0 if num_pill <= 1 else dist * 100 * (num_pill - 1) + width * (num_pill - 2)

# Solution 2 using logical statements to zero the value if there are 1 or less pillars
def pillars(num_pill, dist, width):
    return dist * 100 * (num_pill - 1) + width * (num_pill - 2) * (num_pill > 1)


# Tests
test.describe("Basic Tests")
test.assert_equals(pillars(1, 10, 10) , 0)
test.assert_equals(pillars(2, 20, 25) , 2000)
test.assert_equals(pillars(11, 15, 30) , 15270)