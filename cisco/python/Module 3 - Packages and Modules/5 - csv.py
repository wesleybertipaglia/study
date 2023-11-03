import csv

# Writing data to a CSV file
data = [
    ["Name", "Age", "City"],
    ["Alice", 25, "New York"],
    ["Bob", 30, "San Francisco"],
    ["Charlie", 22, "Los Angeles"]
]

with open("people.csv", "w", newline="") as csv_file:
    csv_writer = csv.writer(csv_file)
    csv_writer.writerows(data)
    
print("CSV file 'people.csv' created.")

# Reading data from a CSV file
with open("people.csv", "r") as csv_file:
    csv_reader = csv.reader(csv_file)
    for row in csv_reader:
        print(row)
