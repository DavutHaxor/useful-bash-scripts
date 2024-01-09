#!/usr/bin/bash

# Function to convert Minute.Seconds to seconds
convert_to_seconds() {
    local time=$1
    local minutes=$(echo "$time" | cut -d'.' -f1)
    local seconds=$(echo "$time" | cut -d'.' -f2)

    # Check if the input is valid
    if [[ -z $minutes || -z $seconds || ! $minutes =~ ^[0-9]+$ || ! $seconds =~ ^[0-9]+$ ]]; then
        echo "Invalid input format. Please provide a valid Minute.Seconds format."
        exit 1
    fi

    local total_seconds=$((minutes * 60 + seconds))
    echo "$total_seconds"
}

# Prompt user for input
echo "Start Time ||| Input File ||| Duration ||| Output File"
read start input duration output

# Convert skip time to seconds
skip_seconds=$(convert_to_seconds "$start")
#duration_seconds=$(convert_to_seconds "$duration")

# Use ffmpeg with the converted skip time in seconds
ffmpeg -ss $skip_seconds -i "$input" -c copy -t "$duration" "$output"
