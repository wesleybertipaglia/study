import pandas as pd

# Creating a DataFrame from a dictionary
data = {
    "Name": ["Alice", "Bob", "Charlie"],
    "Age": [25, 30, 22],
    "City": ["New York", "San Francisco", "Los Angeles"]
}
df = pd.DataFrame(data)

# Reading data from a CSV file into a DataFrame
csv_file = "data.csv"
df_from_csv = pd.read_csv(csv_file)

# Displaying the first few rows of the DataFrame
print("DataFrame from dictionary:")
print(df)
print("\nDataFrame from CSV:")
print(df_from_csv)

# Accessing columns and rows
ages = df["Age"]
name_age = df[["Name", "Age"]]
row1 = df.loc[0]
subset = df.loc[1:2, ["Name", "City"]]

# Filtering data
filtered_df = df[df["Age"] > 23]

# Adding a new column
df["Country"] = ["USA", "USA", "USA"]

# Grouping and aggregating data
grouped_data = df.groupby("City").mean()

# Sorting data
sorted_df = df.sort_values(by="Age", ascending=False)

# Writing DataFrame to a CSV file
df.to_csv("new_data.csv", index=False)

print("\nAges column:", ages)
print("\nName and Age columns:")
print(name_age)
print("\nRow 1:")
print(row1)
print("\nSubset of data:")
print(subset)
print("\nFiltered DataFrame:")
print(filtered_df)
print("\nGrouped data:")
print(grouped_data)
print("\nSorted DataFrame:")
print(sorted_df)
