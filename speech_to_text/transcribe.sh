#!/bin/bash

# This script is used to process al the audio-files in the '../data/audio' directory
# into text files in the '../data/text' directory 
current_dir=$(pwd)
cd ../data/audio
for FILE in *; 
    do whisper "file:${FILE}" --model large --language Dutch --output_dir ../text/;
done
cd $current_dir