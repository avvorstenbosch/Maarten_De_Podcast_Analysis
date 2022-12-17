#!/bin/bash

# This script is used to process all the episodes in the '../data/audio' directory
# that were found to be incomplete and have been re-downloaded
# into text files in the '../data/text' directory 
current_dir=$(pwd)
cd ../data/audio
while read mp3;
    do whisper "file:${mp3}" --model large --language Dutch --output_dir ../text/;
done <../../extract_data/incomplete_mp3.txt
cd $current_dir