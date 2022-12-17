#!/bin/bash

# This script is used to process the newly released episodes in the audio-files in the '../data/audio' directory
# into text files in the '../data/text' directory 
current_dir=$(pwd)
cd ../data/audio
while read mp3;
    do whisper "file:${mp3}" --model large --language Dutch --output_dir ../text/;
done <../../extract_data/update_mp3.txt
cd $current_dir