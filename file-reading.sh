#!/bin/bash

filename="users.txt"

while read line; do
	echo $line
done < $filename
