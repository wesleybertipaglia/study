# Map
def square(x):
    return x ** 2

numbers = [1, 2, 3, 4, 5]
squared_numbers = map(square, numbers)

print(list(squared_numbers))  # Output: [1, 4, 9, 16, 25]


# Filters
def is_even(x):
    return x % 2 == 0

numbers = [1, 2, 3, 4, 5, 6, 7, 8]
even_numbers = filter(is_even, numbers)

print(list(even_numbers))  # Output: [2, 4, 6, 8]