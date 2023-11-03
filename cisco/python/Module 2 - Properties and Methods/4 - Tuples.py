# Tuples - Properties and Methods
my_tuple = (1, 2, 3)

## Accessing Elements
my_tuple[0]
my_tuple[-1] # Output: 3 (last element)

# Methods
my_tuple = (1, 2, 3, 2, 4, 5)

## Count occurrences of an element
my_tuple.count(2)

## Find the index of an element
my_tuple.index(4)

# Unpacking
a, b, c = my_tuple
print(a)  # Output: 1
print(b)  # Output: 2
print(c)  # Output: 3

# Combining Tuples
tuple1 = (1, 2)
tuple2 = (3, 4)

combined_tuple = tuple1 + tuple2
print(combined_tuple)  # Output: (1, 2, 3, 4)