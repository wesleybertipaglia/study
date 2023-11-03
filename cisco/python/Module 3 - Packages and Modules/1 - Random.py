import random

# Generate a random float between 0 and 1
random_float = random.random()
print("Random float:", random_float)

# Generate a random integer between 1 and 10
random_int = random.randint(1, 10)
print("Random integer:", random_int)

# Choose a random element from a list
fruits = ["apple", "banana", "cherry", "date"]
random_fruit = random.choice(fruits)
print("Random fruit:", random_fruit)

# Shuffle a list of numbers
numbers = [1, 2, 3, 4, 5]
random.shuffle(numbers)
print("Shuffled numbers:", numbers)

# Select 3 unique random elements from a list
sampled_numbers = random.sample(numbers, 3)
print("Sampled numbers:", sampled_numbers)

# Generate a random Gaussian (normal) distribution
random_gaussian = random.gauss(0, 1)
print("Random Gaussian:", random_gaussian)

# Generate a random value using an exponential distribution
random_exponential = random.expovariate(0.5)
print("Random Exponential:", random_exponential)
