#!/bin/bash

# Get the current date and time in the specified format


# Variables
directory="$HOME/notes"
current_datetime=$(date +"%Y%m%d%H%M")
created_at=$(date +"%d/%m/%Y %H:%M")
filename="$current_datetime.md"

# Create the file with prefilled content
cat <<EOF > "$directory/$filename"
---
id: $current_datetime
created_at: $created_at
title: 
tags:
---
EOF

# Open it in vscode
code . "$directory/$filename"