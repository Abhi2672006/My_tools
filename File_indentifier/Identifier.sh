#!/bin/bash

# File Type Identifier
# Checks whether a file's magic number matches its extension
# Author: Abhishek Kumar

# Date: 2026-01-12
echo -e "\n\e[34m=== File Type Identifier ===\e[0m"
declare -A magic

magic[jpg]="ffd8ff"
magic[png]="89504e47"
magic[pdf]="25504446"
magic[zip]="504b0304"
magic[exe]="4d5a"
magic[elf]="7f454c46"

read -p "Enter the name of your file: " filename
if [ -z "$filename" ]; then
    echo "No filename provided. Exiting."
    exit 1
fi

echo -e "\n\e[32mMagic Number Analysis:\e[0m"

ext=${filename##*.}
path=$(find ~ -type f -name "$filename" 2>/dev/null | head -n 1)

if [ -n "$path" ]; then
    echo "Raw file data:$(xxd -c 16 ${path})"
    file=$(head -c 16 "$path" | xxd -p | head -n 1 | tr -d '\n')
    
    echo -e "\nFile command output:\n"
    if [[ "$ext" == "txt" ]]; then
    	if [[ "$file" == 7f454c46* || "$file" == 4d5a* || "$file" == 25504446* || "$file" == ffd8ff* || "$file" == 89504e* ]]; then
    	    echo -e "\e[31m\!Suspicious: Binary file disguised as text.\e[0m"
    	else
    	    echo "Looks like a normal text file."
    	fi
    

    elif [[ ${magic[$ext]} == ${file:0:${#magic[$ext]}} ]]; then
        echo "The file '$filename' is a valid .$ext file."
    else
        echo "The file '$filename' is NOT a valid .$ext file."
    fi

else
    echo "File '$filename' not found."
fi
echo -e "\n\e[34mAuthor: Abhishek Kumar\e[0m"
exit 0
