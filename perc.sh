#!/bin/bash

calculate_percentage() {
    local number=$1
    local percentage=$2

    if [[ $number =~ ^[0-9]+(\.[0-9]+)?$ && $percentage =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        local result=$(bc <<< "scale=2; $number * $percentage / 100")
        echo "Result: $result"
    else
        echo "Invalid input. Please provide valid numbers."
    fi
}

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number> <percentage>"
    exit 1
fi

# Call the calculate_percentage function
calculate_percentage "$1" "$2"

