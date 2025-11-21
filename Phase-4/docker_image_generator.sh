#!/bin/bash

IMAGE_NAME=$1
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
DOCKERFILE="$2"

if [[ ! -e $DOCKERFILE ]];then
	echo "Please provide docker file"
	exit 1
fi

echo "Creating $IMAGE_NAME image as requested on $TIMESTAMP"

docker build -t "$IMAGE_NAME-$TIMESTAMP" -f $DOCKERFILE .



