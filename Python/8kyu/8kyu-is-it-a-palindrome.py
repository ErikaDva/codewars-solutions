# Is it a palindrome?
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def is_palindrome(s):
    return s.lower() == s[::-1].lower()


# Tests
@test.describe('sample tests')
def sample_tests():
    test.assert_equals(is_palindrome('a'), True)
    test.assert_equals(is_palindrome('aba'), True)
    test.assert_equals(is_palindrome('Abba'), True)
    test.assert_equals(is_palindrome('malam'), True)
    test.assert_equals(is_palindrome('walter'), False)
    test.assert_equals(is_palindrome('kodok'), True)
    test.assert_equals(is_palindrome('Kasue'), False)