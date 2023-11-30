import sys
import requests

# Check if both URL and file are provided as command-line arguments
if len(sys.argv) != 3:
    print("Usage: python script.py <URL> <filename>")
    sys.exit(1)

# Get the URL and file from the command-line arguments
url = sys.argv[1]
filename = sys.argv[2]

# Check if the file exists
try:
    with open(filename, 'r') as file:
        file_contents = file.read()
except FileNotFoundError:
    print(f"Error: File {filename} not found.")
    sys.exit(1)

# Set the headers for the POST request
headers = {"Content-Type": "application/json"}

# Send a POST request with the file contents in the body
try:
    response = requests.post(url, headers=headers, data=file_contents)
    print("Response Body:")
    print(response.text)
except requests.RequestException as e:
    print(f"Error: {e}")
