#!/bin/bash
#pomversion=${pomversion:?"Missing Tag Name"}
pomversion=echo $3
DOCKER_TAG=${pomversion}
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 230601024369.dkr.ecr.ap-south-1.amazonaws.com
docker build -t demo:${DOCKER_TAG} .
docker tag demo:${DOCKER_TAG} 230601024369.dkr.ecr.ap-south-1.amazonaws.com/demo:${DOCKER_TAG}
docker push 230601024369.dkr.ecr.ap-south-1.amazonaws.com/demo:${DOCKER_TAG}
