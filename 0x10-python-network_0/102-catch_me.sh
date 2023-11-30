import requests

# Use requests to make a request that triggers the server response
url = 'http://0.0.0.0:5000/catch_me'
headers = {'Origin': 'HolbertonSchool'}

try:
    response = requests.put(url, headers=headers)
    # The response body won't be displayed directly due to the restrictions
    print(f"Status Code: {response.status_code}")
except requests.RequestException as e:
    print(f"Error: {e}")
