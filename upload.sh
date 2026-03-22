#!/bin/bash

# luôn vào đúng repo (fix lỗi .git)
cd /d/GitHub_Images/SuiopLnhc-gH271-921-uie-57

img="$1"

# kiểm tra file
[ ! -f "$img" ] && echo "File not found!" && exit 1

filename=$(date +%s)_$(basename "$img")

mkdir -p images
cp "$img" "images/$filename"

git add .
git commit -m "upload $filename"

git pull --rebase origin main
git push

# Bỏ tracking file trong Git để có thể xóa local mà không ảnh hưởng GitHub
git rm --cached "images/$filename"

# Xóa file gốc local (nếu muốn)
rm "$img"

url="https://raw.githubusercontent.com/baki69273-svg/SuiopLnhc-gH271-921-uie-57/main/images/$filename"

echo "$url"

# copy clipboard (fix bước cuối)
echo "$url" | /c/Windows/System32/clip.exe
