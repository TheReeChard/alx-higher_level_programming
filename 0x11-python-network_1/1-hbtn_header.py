#!/usr/bin/python3
""" This script :
    - Takes in a URL
    - Sends a request to the URL
    - Displays the value of the X-Request-Id variable.
"""
import urllib.request
import sys

if __name__ == '__main__':
    url = sys.argv[1]

    with urllib.request.urlopen(url) as res:
        header_dict = dict(res.info())
        x_request_id = header_dict.get('X-Request-Id')
        print(x_request_id)

