import requests # pip install requests

# Sending a GET request
response = requests.get("https://jsonplaceholder.typicode.com/posts/1")
data = response.json()  # Convert the response to JSON
print("GET Response:")
print("Status Code:", response.status_code)
print("Data:", data)

# Sending a POST request with JSON data
new_post = {
    "userId": 1,
    "id": 101,
    "title": "Sample Post",
    "body": "This is a sample post."
}
response = requests.post("https://jsonplaceholder.typicode.com/posts", json=new_post)
print("POST Response:")
print("Status Code:", response.status_code)
print("Response Content:", response.content.decode("utf-8"))

# Sending a PUT request to update data
updated_post = {
    "id": 1,
    "title": "Updated Title",
    "body": "This is the updated content."
}
response = requests.put("https://jsonplaceholder.typicode.com/posts/1", json=updated_post)
print("PUT Response:")
print("Status Code:", response.status_code)
print("Response Content:", response.content.decode("utf-8"))

# Sending a DELETE request to remove data
response = requests.delete("https://jsonplaceholder.typicode.com/posts/1")
print("DELETE Response:")
print("Status Code:", response.status_code)
print("Response Content:", response.content.decode("utf-8"))
