#!/bin/bash

#Directory to store diary data
directory="${HOME}/diary"

#Create if there is no directory to store diary data
if [ ! -d "$directory" ]; then
	mkdir "$directory"
fi

#The diary file path
diaryfile="${directory}/$(date '+%Y-%m-%d').txt"

#If there is no diary file (if you are writing for the first time today), insert the date at the beginning
if [ ! -e "$diaryfile" ]; then
	date '+%Y/%m/%d' > "$diaryfile"
fi

#Edit the diary directory
vim "$diaryfile"
