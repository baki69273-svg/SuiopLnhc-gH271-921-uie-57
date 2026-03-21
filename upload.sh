#!/bin/bash

# 🔥 QUAN TRỌNG: chuyển vào repo
cd /d/GitHub_Images/SuiopLnhc-gH271-921-uie-57

img="$1"

[ ! -f "$img" ] && echo "File not found!" && exit 1

filename=$(date +%s)_$(basename "$img")

mkdir -p images
cp "$img" "images/$filename"

git add .
git commit -m "upload $filename"

git pull --rebase origin main
git push

url="https://raw.githubusercontent.com/baki69273-svg/SuiopLnhc-gH271-921-uie-57/main/images/$filename"

echo "$url"
echo "$url" | clip
rm "$img"
