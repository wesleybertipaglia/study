# Numbers - Properties and Methods
x = 5
y = 3.14

## Integer
x.real # Real part of the integer (same as the integer itself)
x.imag # Imaginary part of the integer (always 0 for integers)
x.bit_length() # Number of bits required to represent the integer
x.to_bytes(2, byteorder='big') # Convert integer to bytes with specified length and byte order

## Float
y.real # Real part of the floating-point number
y.imag # Imaginary part of the floating-point number (always 0 for real numbers)
y.is_integer() # Check if the floating-point number is a whole number
y.hex() # Get the hexadecimal representation of the floating-point number

## Built-in functions
abs(-5) # Absolute value
round(3.14159, 2) # Round to a specific number of decimal places
min(5, 3, 8) # Minimum value
max(5, 3, 8) # Maximum value