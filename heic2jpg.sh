#!/bin/zsh

# Script to convert iphone photos in HEIC format to jpg. 
# from https://apple.stackexchange.com/questions/297134/how-to-convert-a-heif-heic-image-to-jpeg-in-macos

# Usage:
# cd <directory with photos>
# heic2jpg.sh

# This will create a bunch of jpg files. You will need to move the heic files away.

# for i in *.HEIC(:r); do sips -s format jpeg -s formatOptions best "$i.HEIC" --out "$i.jpg"; touch -r done;
for f in $(ls *.HEIC *.heic); do
   fileNoExt="${f%.*}"
   jpgFile="${fileNoExt}.jpg"
   sips -s format jpeg "$f" --out "$jpgFile"
   touch -r "$f" "$jpgFile"
done
