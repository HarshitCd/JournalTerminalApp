#!/bin/sh

WORK_DIR='/home/haru/Haru/Journaling'
cd $WORK_DIR

JOURNAL_DIR="journals/"$(date +'%Y-%m')"/"
FILE=$JOURNAL_DIR$(date '+%Y-%m-%d')".md"

if [ $# -eq 0 ]; then    
    if [ ! -d "$JOURNAL_DIR" ]; then
        mkdir "$JOURNAL_DIR"
    fi  

    if [ ! -f "$FILE" ]; then
        cat template.md >> "$FILE"
    fi  
    
    nvim $FILE
else
    if [ "$1"=="view" ]; then
        glow -s dark "$(fzf)" | less -r 
    fi
fi

clear

