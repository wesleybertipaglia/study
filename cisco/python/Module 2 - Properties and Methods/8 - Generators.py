# Generators
def squares(n):
    for i in range(n):
        yield i ** 2

# Using the generator
square_gen = squares(5)
for num in square_gen:
    print(num)