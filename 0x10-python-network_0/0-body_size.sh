#!/bin/bash
# Get the byte size of the HTTP response header for a given URL.
url=$1
response=$(curl -s -w "\n%{size_download}" $url)
size=$(echo "$response" | tail -n 1)
echo "$size"
