#!/bin/bash

img="$1"

filename=$(date +%s)_$(basename "$img")

mkdir -p images
cp "$img" "images/$filename"

git add .
git commit -m "upload $filename"
git push

url="https://raw.githubusercontent.com/baki69273-svg/SuiopLnhc-gH271-921-uie-57/main/images/$filename"

echo "$url"

