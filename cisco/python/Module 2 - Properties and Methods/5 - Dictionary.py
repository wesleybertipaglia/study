# Dictionary - Properties and Methods
my_dict = {
    "name": "Alice",
    "age": 30,
    "city": "Wonderland"
}

## Accessing Values
print(my_dict["name"])
print(my_dict.get("age"))

## Adding or updating items
my_dict["occupation"] = "Adventurer"
my_dict["age"] = 31

## Removing items
removed_value = my_dict.pop("age")
del my_dict["city"]
my_dict.clear()

# Methods
my_dict.keys()
my_dict.values()
my_dict.items()



# Iteration
## Iterating through keys
for key in my_dict:
    print(key)

## Iterating through values
for value in my_dict.values():
    print(value)

## Iterating through items (key-value pairs)
for key, value in my_dict.items():
    print(key, value)

# Comprehension
numbers = [1, 2, 3, 4, 5]
squared_dict = {num: num ** 2 for num in numbers}
print(squared_dict)
