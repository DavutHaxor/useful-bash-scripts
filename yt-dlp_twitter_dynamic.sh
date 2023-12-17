#!/usr/bin/bash

echo "Enter your username"
read username

echo "Enter your password"
read password

echo "Enter the link"
read link

yt-dlp --username $username --password $password $link
