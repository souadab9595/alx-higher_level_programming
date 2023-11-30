import sys
import subprocess

# Check if a URL is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

# Get the URL from the command-line argument
url = sys.argv[1]

# Use subprocess to call curl and capture the status code
try:
    result = subprocess.run(["curl", "-s", "-o", "/dev/null", "-w", "%{http_code}", url], capture_output=True, text=True)
    status_code = result.stdout.strip()
    print(f"Status Code: {status_code}")
except subprocess.CalledProcessError as e:
    print(f"Error: {e}")
