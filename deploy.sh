#!/bin/bash
docker-compose down --rmi all --volumes --remove-orphans
echo y | docker system prune -a

rm -rf ./db/data

docker-compose build 
docker-compose up
