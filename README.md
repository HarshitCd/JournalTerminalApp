# Simple Journaling Terminal Application

## Create a Journals Directory

Create a `journals`  directory within this directory.
``` terminal
mkdir journals
```
This is where all your journals will be stored.

## Create an alias to journal.sh
``` terminal
export journal="<path_to_this_repo>/journal.sh"
```

## Create your own template
Create your own template by adding it into the template.md file.

## To Create a journal
To create a journal just type `journal` in the terminal.
``` terminal
journal
```
This uses neovim as the text editor.
To change this you can edit the journal.sh script and use what editor you like.

## To View the journals
To view the journal type `journal view` in the terminal.
``` terminal
journal view
```
This uses glow as the markdown viewer in terminal and fzf to select which journal to open.