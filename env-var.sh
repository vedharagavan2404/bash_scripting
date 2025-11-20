#!/bin/bash

echo "You're in $APP_ENV environment"
echo "Database Host: $DB_HOST"

if [ -z $APP_ENV ] || [ -z $DB_HOST ]; then 
	echo "One ore more env vars are not set"
else
	echo "All env vars are set!"
fi


