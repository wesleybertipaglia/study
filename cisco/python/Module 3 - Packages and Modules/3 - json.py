import json

# JSON data as a string
json_data = '{"name": "John", "age": 30, "city": "New York"}'

# Parse JSON data into a Python dictionary
data_dict = json.loads(json_data)
print("Parsed JSON as dictionary:", data_dict)
print("Name:", data_dict["name"])
print("Age:", data_dict["age"])
print("City:", data_dict["city"])

# Create a Python dictionary
person_dict = {"name": "Alice", "age": 25, "city": "San Francisco"}

# Convert the dictionary to JSON format
json_string = json.dumps(person_dict)
print("Python dictionary as JSON string:", json_string)

# Write JSON data to a file
with open("person.json", "w") as json_file:
    json.dump(person_dict, json_file)

# Read JSON data from a file
with open("person.json", "r") as json_file:
    loaded_json = json.load(json_file)
    print("Loaded JSON from file:", loaded_json)
