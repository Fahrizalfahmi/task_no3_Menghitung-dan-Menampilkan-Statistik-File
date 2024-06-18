#!/bin/bash

directory="/etc/"

printf "| %-30s | %-10s | %-10s | %-10s |\n" "File" "Lines" "Words" "Characters"
printf "| %-30s | %-10s | %-10s | %-10s |\n" "------------------------------" "----------" "----------" "----------"

for file in $directory/*.conf; do
    if [ -f "$file" ]; then
        
        lines=$(wc -l < "$file")
        words=$(wc -w < "$file")
        chars=$(wc -m < "$file")
        
        
        printf "| %-30s | %-10s | %-10s | %-10s |\n" "$(basename "$file")" "$lines" "$words" "$chars"
    fi
done
