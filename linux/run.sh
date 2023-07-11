#!/bin/bash

IMAGE_NAME='hmzdtz/ubuntu'
TAG_NAME='latest'
CONTAINER_NAME='linux-kernel'
SOURCE_PATH="$HOME/src/workspace"

if [[ -z "$(docker images -q $IMAGE_NAME:$TAG_NAME 2> /dev/null)" ]]; then
    docker build -t $IMAGE_NAME .
fi

if [[ -z "$(docker inspect $CONTAINER_NAME 2> /dev/null | grep "\"Name\": \"/$CONTAINER_NAME\"")" ]]; then
    docker run --name $CONTAINER_NAME --hostname $CONTAINER_NAME -v $SOURCE_PATH:/linux -it $IMAGE_NAME:$TAG_NAME /bin/bash
else
    # docker stop $CONTAINER_NAME
    docker start -a -i $CONTAINER_NAME
fi

