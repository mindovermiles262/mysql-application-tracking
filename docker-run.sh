#!/bin/bash

DIR=$(pwd)

docker run \
  -d \
  -it \
  -v "$DIR/volume:/var/lib/mysql" \
  -v "$DIR:/docker-shared" \
  --name at-mysql \
  --rm \
  -e MYSQL_ROOT_PASSWORD=jobvite \
  -p 3306:3306 \
  mysql:5.7
