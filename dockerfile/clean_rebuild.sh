#!/bin/bash 

set -ex

# delete all container
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# delete all image
docker rmi -f $(docker images -q)

# rebuild
./build_all.sh
docker-compose up -d
