import sys
import requests

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Send a request and display the size of the response body in bytes
response = requests.get(url)
size = len(response.content)
print(f"Size of the response body: {size} bytes")
