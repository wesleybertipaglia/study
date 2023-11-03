# Arrays - Properties and Methods
animals = ["lion", "elephant", "zebra", "giraffe", "tiger"]

## Accessing elements
print(animals[0])

## Indexing an element
animals[4] = "dog"

## Appending elements
animals.append("monkey")

## Deleting elements
del animals[1]

## Inserting elements
animals.insert(2, "hippo")

## Removing elements
animals.remove("giraffe")

## Slicing
allSet = animals[:]
subset = animals[1:4]

## Length of an array
animalsLen = len(animals)

# Sorting
numbers = [5, 2, 9, 1, 5]

## Sort
numbers.sort()
print(numbers) # Output: [1, 2, 5, 5, 9]

## Sorted
sorted_numbers = sorted(numbers)
print(sorted_numbers) # Output: [1, 2, 5, 5, 9]

## Reverse
sorted_numbers_desc = sorted(numbers, reverse=True) # Create a new sorted list in descending order
print(sorted_numbers_desc) # Output: [9, 5, 5, 2, 1]

## Bubble Sort
my_list = [8, 10, 6, 2, 4]

def bubbleSort(arr): 
    swapped = True
    
    while swapped:
        swapped = False
        for i in range(len(arr) - 1):
            if arr[i] >arr[i + 1]:
                swapped = True 
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
    
bubbleSort(my_list)
print(my_list)

# Multidimensional arrays

## Two-dimensional arrays
rows = 3
cols = 4

matrix = []
for i in range(rows):
    row = []
    for j in range(cols):
        row.append(i * cols + j + 1)
    matrix.append(row)

for row in matrix:
    print(row)

## Three-dimensional array
depth = 2
rows = 3
cols = 4

cube = []
for i in range(depth):
    layer = []
    for j in range(rows):
        row = []
        for k in range(cols):
            row.append(i * (rows * cols) + j * cols + k + 1)
        layer.append(row)
    cube.append(layer)

for layer in cube:
    for row in layer:
        print(row)
    print()