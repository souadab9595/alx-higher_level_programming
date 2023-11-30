import sys
import requests

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Send an OPTIONS request to retrieve allowed HTTP methods
response = requests.options(url)

# Extract allowed HTTP methods from the response headers
allowed_methods = response.headers.get('allow', 'Not Available')

# Display the allowed HTTP methods
print(f"Allowed HTTP Methods for {url}: {allowed_methods}")
