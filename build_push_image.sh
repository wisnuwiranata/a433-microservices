#!/bin/bash

#docker app build
docker build -t item-app:v1 .

#docker images list
docker images

#change docker image name
docker tag item-app:v1 wisnuwiranata/dicoding_app:v1

#docker hub login
echo $PASSWORD_DOCKER_HUB | docker login -u wisnuwiranata --password-stdin

#push docker image
docker push wisnuwiranata/dicoding_app:v1