#!/usr/bin/env bash
# Bash script that takes in a URL
# sends a request to that URL
# Displays the size of the body of the response
url=$1
response=$(curl -s -w "\n%{size_download}" $url)
size=$(echo "$response" | tail -n 1)
echo "$size"
