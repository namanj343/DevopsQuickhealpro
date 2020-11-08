#!/bin/bash
#for pulling docker images
docker pull namanj71/qhmagento
#for getting credential for ecr for successful login
$(aws ecr get-login --no-include-email --region ap-south-1)
# tagging image
docker tag b57370a01e0e 015425171629.dkr.ecr.ap-south-1.amazonaws.com/qhmagento:latest
#pushing image to ECR
docker push 015425171629.dkr.ecr.ap-south-1.amazonaws.com/qhmagento:latest
