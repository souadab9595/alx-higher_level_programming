import sys
import requests

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Send a DELETE request and display the body
response = requests.delete(url)

# Display the body of the response
print("Response Body:")
print(response.text)
