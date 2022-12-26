# Double Char
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

# Solution 1
def double_char(s):
    split_s = [str(x) * 2 for x in str(s)]
    return "".join(split_s)

# Solution 2
def double_char(s):
    result = ""
    for i in s:
        result += i * 2
    return result

# Solution 3
def double_char(s):
    return "".join(i * 2 for i in s)


# Tests
test.assert_equals(double_char("String"),"SSttrriinngg")
test.assert_equals(double_char("Hello World"),"HHeelllloo  WWoorrlldd")
test.assert_equals(double_char("1234!_ "),"11223344!!__  ")