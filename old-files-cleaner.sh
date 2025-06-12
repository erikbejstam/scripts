#!/bin/bash

# Just an initial test script. 
# Later I probably want to prompt the user with every file to be deleted actually, and the user can go y/n.
# Should also include possibility to delete directories.

read -pr "Enter directory to clean: " TARGET_DIR 

read -pr "Delete files not modified in how many days: " DAYS

read -pr "Are you sure? [y/n] " CONFIRM

if [[CONFIRM != "y"]]; then 
	echo "Operation cancelled"
	exit 1
fi

find "$TARGET_DIR" -type f -mtime +$DAYS -print -delete

echo "Done. Old files slaughtered."
