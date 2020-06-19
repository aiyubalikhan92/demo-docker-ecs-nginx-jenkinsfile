#!/usr/bin/env bash
set -e
source ./ci/config.sh

export VERSION=$1

docker build --pull -t "experiment-nginx:latest" -f ./ci/Dockerfile .
docker tag "experiment-nginx:latest" "208050583360.dkr.ecr.us-east-1.amazonaws.com/experiment-nginx:$VERSION"
$(aws ecr get-login --region "us-east-1" --no-include-email)
docker push "208050583360.dkr.ecr.us-east-1.amazonaws.com/nodepaa/experiment-nginx:$VERSION"

echo "Docker image experiment-nginx:$VERSION prepared and pushed"
