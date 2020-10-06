#!/bin/bash

# if problem https://github.com/ytdl-org/youtube-dl/blob/master/README.md#how-do-i-update-youtube-dl reinstall manually youtube-dl
# @todo move this in a file and read file line by line to dl

while getopts 'oh' c
do
  case $c in
    o) output=$2 ;;
    h) echo help:
       echo -o
       echo specify output path
       echo ex: ./youtube2mp3.sh -o /home/user/Downloads/ url.txt
       echo
       echo -h
       echo display help 
       echo ex: ./youtube2mp3.sh -h
       exit 1
      ;;
  esac
done

while IFS= read -r url; do
  echo $url
  youtube-dl --extract-audio --audio-format mp3 -o $output"%(title)s.%(ext)s" $url
done < "$3"

notify-send "Download complete !"
echo "Download complete !"


