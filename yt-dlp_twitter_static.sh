#! /bin/bash

echo "Enter the Link"
read link

yt-dlp --username {username} --password {password} $link
