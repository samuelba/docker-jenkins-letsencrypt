#!/bin/bash

echo -e "Build Dockerfile."

docker build -t samuelba/blueocean:latest .

echo -e "Login to Docker."

docker login

echo -e "Push to Docker."

docker push samuelba/blueocean:latest
