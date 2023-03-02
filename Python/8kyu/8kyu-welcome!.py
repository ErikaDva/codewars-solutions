# Welcome!
# Language: Python
# Version: 3.10
# Difficulty: 8 kyu

def greet(language):
    database = {'english': 'Welcome',
                'czech': 'Vitejte',
                'danish': 'Velkomst',
                'dutch': 'Welkom',
                'estonian': 'Tere tulemast',
                'finnish': 'Tervetuloa',
                'flemish': 'Welgekomen',
                'french': 'Bienvenue',
                'german': 'Willkommen',
                'irish': 'Failte',
                'italian': 'Benvenuto',
                'latvian': 'Gaidits',
                'lithuanian': 'Laukiamas',
                'polish': 'Witamy',
                'spanish': 'Bienvenido',
                'swedish': 'Valkommen',
                'welsh': 'Croeso'}
    return database.get(language, "Welcome")


# Tests
test.describe("Basic tests")
test.assert_equals(greet('english'), 'Welcome')
test.assert_equals(greet('dutch'), 'Welkom')
test.assert_equals(greet('IP_ADDRESS_INVALID'), 'Welcome')
test.assert_equals(greet(''), 'Welcome')
test.assert_equals(greet(2), 'Welcome')