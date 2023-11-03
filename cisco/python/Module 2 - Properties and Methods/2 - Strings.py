# Strings - Properties and Methods
text = "Hello, world!"

## Multiple line strings
multiple_lines = """
    Line 1
    Line 2
"""

## Length
len(text)

## Concatenation (joining strings)
greeting = "Hello"
name = "Alice"
message = greeting + ", " + name

## String repetition
repeated_text = "abc" * 3

## Accessing characters using indexing
print(text[0])
print(text[-1])

## Methods
text = "  Hello, Python!  "

## Removing leading and trailing whitespace
cleaned_text = text.strip()

## Changing case
text.lower()
text.upper()

## Finding and replacing
text.find("Python")
text.replace("Python", "World")

## Splitting and joining
words = text.split(",")
joined_text = " - ".join(words)

## F-strings
name = "Alice"
age = 30
print(f"My name is {name} and I am {age} years old.")

## Index: return the index of a charactere in a string, or array
print(name.index("A")) # return 0

## List: transform a string in a list
name_list = list(name)

## Capitalize
name = name.capitalize()

## Center: centralize a string inside a range
print("[" + name.center(20) + "]")

## Ord: return the ASCII code from a charactere
print(ord("a")) # return 97

## Chr: return the charactere from the ASCII code
print(chr(97)) # return a