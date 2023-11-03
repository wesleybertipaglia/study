# Files

## Opening a file
file = open("example.txt", "r")  # Open for reading

## Reading a file
content = file.read()  # Read the entire content
line = file.readline()  # Read one line
lines = file.readlines()  # Read all lines into a list

## Writing to a file
file = open("example.txt", "w")  # Open for writing
file.write("Hello, World!")  # Write data to the file
file.close()  # Close the file

## Appending to a file
file = open("example.txt", "a")  # Open for appending
file.write("New line added.")  # Append data to the file
file.close()  # Close the file

## Working with binary Ffiles
with open("example.bin", "rb") as binary_file:
    data = binary_file.read()

## Closing files
file = open("example.txt", "r")
content = file.read()
file.close()