# Functions
def greet(name):
    print(f"Hello, {name}!")

def add(a, b):
    return a + b

greet("Alice")  # Output: Hello, Alice!
print(add(5, 3))  # Output: 8

# Lambda: functions in one line
add = lambda x, y: x + y

result = add(5, 3)
print(result)  # Output: 8