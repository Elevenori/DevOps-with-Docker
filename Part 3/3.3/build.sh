#!/bin/sh

#clone repository
echo "Cloning repository from $1"
git clone https://github.com/$1.git

#change folder
cd $(basename $1)

#build image
echo "Building Docker image"
docker build . -t $2
docker login

#push image
echo "Pushing Docker image to $2"
docker push $2
