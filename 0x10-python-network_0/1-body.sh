import sys
import requests

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Send a GET request and display the body if the status code is 200
response = requests.get(url)

# Display body only for a 200 status code
if response.status_code == 200:
    print("Response Body:")
    print(response.text)
else:
    print(f"Received status code: {response.status_code}. Body not displayed for non-200 status.")
