#!/bin/bash

# vào đúng repo
cd /d/GitHub_Images/SuiopLnhc-gH271-921-uie-57

img="$1"

# kiểm tra file
[ ! -f "$img" ] && echo "File not found!" && exit 1

# tạo tên file mới với timestamp
filename=$(date +%s)_$(basename "$img")

mkdir -p images
cp "$img" "images/$filename"

# commit & push
git add .
git commit -m "upload $filename"
git pull --rebase origin main
git push

# tạo URL
url="https://raw.githubusercontent.com/baki69273-svg/SuiopLnhc-gH271-921-uie-57/main/images/$filename"

# copy vào clipboard
echo "$url" | /c/Windows/System32/clip.exe

# hiển thị URL
echo "$url"
