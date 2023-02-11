#!/bin/bash

#login to aws ecr
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 333082661382.dkr.ecr.us-east-1.amazonaws.com

#pull image
docker pull 333082661382.dkr.ecr.us-east-1.amazonaws.com/dave_private:latest

#killing all others running containers
docker kill $(docker ps -q)

#run new image
docker run -d -p 5000:5000 333082661382.dkr.ecr.us-east-1.amazonaws.com/dave_private:latest
