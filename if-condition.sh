#!/bin/bash

if [ -d /tmp/testdir ]; then 
	echo "Directory Already Exists"
else 
	mkdir -p /tmp/testdir
	echo "Directory Created"
fi
