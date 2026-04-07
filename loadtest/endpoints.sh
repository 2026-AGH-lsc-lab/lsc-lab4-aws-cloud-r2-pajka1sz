#!/bin/bash
# Endpoint URLs for load testing
# Fill in after deploying with the URLs printed by each deploy script
export LAMBDA_ZIP_URL="https://xu4an2j4ry6pgpmk2hlxh5ysui0pucdz.lambda-url.us-east-1.on.aws/"        # e.g. https://<id>.lambda-url.us-east-1.on.aws
export LAMBDA_CONTAINER_URL="https://spu2mq37i6ypnepo76tzbpzufi0yvwvb.lambda-url.us-east-1.on.aws/"  # e.g. https://<id>.lambda-url.us-east-1.on.aws
export FARGATE_URL="http://lsc-knn-alb-586481412.us-east-1.elb.amazonaws.com"           # e.g. http://<alb-dns>.us-east-1.elb.amazonaws.com
export EC2_URL="http://44.210.81.213:8080"               # e.g. http://<public-ip>:8080
