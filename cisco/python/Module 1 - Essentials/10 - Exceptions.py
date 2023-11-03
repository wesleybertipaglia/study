# Exceptions

## Try.. except.. finally...
try:
    x = int(input("Enter a number: "))
    y = 1 / x
    print(y)
except ZeroDivisionError:
    print("You cannot divide by zero, sorry.")
except ValueError:
    print("You must enter an integer value.")
except:
    print("Oh dear, something went wrong...")

print("THE END.")

## Assert: verify if a condition is true, if not, an exception is emited
x = 10
assert x > 5, "x should be greater than 5"