#!/bin/bash

source_dir=$1
dest_dir="/tmp/backups"
mkdir -p $dest_dir
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

if [ -d $source_dir ]; then
	tar czvf "$dest_dir/backup-$timestamp.tar.gz" "$source_dir"
else
	echo "source directory not found"
fi

	
