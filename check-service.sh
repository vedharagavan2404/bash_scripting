#!/bin/bash

processname=$1

if pgrep -x "$processname" > /dev/null; then
	echo "$processname is running"
else
	echo "$processname is not running"
fi

