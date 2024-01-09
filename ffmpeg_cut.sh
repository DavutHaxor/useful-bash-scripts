#!/usr/bin/bash
echo "Skip Time ||| Input File ||| Duration ||| Output File"
read skip input duration output

ffmpeg -ss $skip -i $input -c copy -t $duration $output

