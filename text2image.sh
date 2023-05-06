#!/bin/bash

# Prompt the user for the API URL
read -p "Enter API URL: " api_url

# Prompt the user for the API token key
read -p "Enter API token key: " api_key

# Prompt the user for the text prompt to be processed
read -p "Enter text prompt to be processed: " prompt

# Prompt the user for the number of images to generate
read -p "Enter the number of images to generate: " n

# Prompt the user for the size of the image to generate
read -p "Enter the size of the image to generate (256x256, 512x512, or 1024x1024): " size

# Generate the curl command
curl_command="curl $api_url -H \"Content-Type: application/json\" -H \"Authorization: Bearer $api_key\" -d '{\"prompt\": \"$prompt\", \"n\": $n, \"size\": \"$size\" }'"

# Execute the curl command
eval $curl_command