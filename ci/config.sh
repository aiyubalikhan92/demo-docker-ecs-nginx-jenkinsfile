#!/usr/bin/env bash

export ENV="test"
export PROJECT="newweb"

export ECS_SERVICE_NAME=my-ecs-service
export ECS_CLUSTER_NAME=my-ecs-cluster

export ECR_REGION=us-east-1
export ECR_ACCOUNT=208050583360
export ECR_REGISTRY=${ECR_ACCOUNT}.dkr.ecr.${ECR_REGION}.amazonaws.com
