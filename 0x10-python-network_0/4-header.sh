import sys
import requests

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Set the header variable X-School-User-Id to the value 98
headers = {"X-School-User-Id": "98"}

# Send a GET request with the custom header and display the body
response = requests.get(url, headers=headers)

# Display the body of the response
print("Response Body:")
print(response.text)
