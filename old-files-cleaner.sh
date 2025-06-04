#!/bin/bash

read -pr "Enter directory to clean: " TARGET_DIR 

read -pr "Delete files not modified in how many days: " DAYS

read -pr "Are you sure? [y/n] " CONFIRM

if [[CONFIRM != "y"]]; then 
	echo "Operation cancelled"
	exit 1
fi

find "$TARGET_DIR" -type f -mtime +$DAYS -print -delete

echo "Done. Old files slaughtered."
