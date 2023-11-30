import sys
import requests

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Set the variables to be sent in the POST request
data = {"email": "test@gmail.com", "subject": "I will always be here for PLD"}

# Send a POST request with variables and display the body
response = requests.post(url, data=data)

# Display the body of the response
print("Response Body:")
print(response.text)
