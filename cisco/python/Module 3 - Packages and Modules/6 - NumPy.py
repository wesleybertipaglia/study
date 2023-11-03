import numpy as np

# Creating arrays
arr1 = np.array([1, 2, 3, 4, 5])
arr2 = np.arange(10)  # Create an array from 0 to 9
arr3 = np.linspace(0, 1, 5)  # Create an array with 5 equally spaced values between 0 and 1

# Array operations
sum_arr = arr1 + arr2  # Element-wise addition
product_arr = arr1 * 2  # Scalar multiplication
sqrt_arr = np.sqrt(arr1)  # Element-wise square root
dot_product = np.dot(arr1, arr2)  # Dot product of two arrays
mean_value = np.mean(arr1)  # Mean value of the array

# Reshaping arrays
reshaped_arr = arr2.reshape(2, 5)  # Reshape array to 2x5

# Indexing and slicing arrays
print("Array 1st element:", arr1[0])
print("Array slice:", arr1[1:4])

# Array functions
max_value = np.max(arr1)
min_index = np.argmin(arr2)
sorted_arr = np.sort(arr1)

# Matrix operations
matrix1 = np.array([[1, 2], [3, 4]])
matrix2 = np.array([[5, 6], [7, 8]])
matrix_product = np.dot(matrix1, matrix2)

# Generating random arrays
random_arr = np.random.rand(3, 3)  # 3x3 array with random values between 0 and 1
normal_dist_arr = np.random.normal(0, 1, size=(2, 2))  # 2x2 array with values from a normal distribution

# Broadcasting
broadcasted_arr = arr1 + 10  # Broadcasting a scalar to an array

# Universal functions (ufuncs)
exp_arr = np.exp(arr1)
log_arr = np.log(arr1)

print("Array examples using NumPy:")
print("Array 1:", arr1)
print("Array 2:", arr2)
print("Array 3:", arr3)
print("Sum of arrays:", sum_arr)
print("Product of array by scalar:", product_arr)
print("Square root of array:", sqrt_arr)
print("Dot product of arrays:", dot_product)
print("Mean value of array:", mean_value)
print("Reshaped array:", reshaped_arr)
print("Matrix product:", matrix_product)
print("Random array:", random_arr)
print("Normal distribution array:", normal_dist_arr)
print("Broadcasted array:", broadcasted_arr)
