#!/bin/bash
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 230601024369.dkr.ecr.ap-south-1.amazonaws.com
docker build -t demo-${pomversion} .
docker tag demo-${pomversion} 230601024369.dkr.ecr.ap-south-1.amazonaws.com/demo-${pomversion}
docker push 230601024369.dkr.ecr.ap-south-1.amazonaws.com/demo-${pomversion}
