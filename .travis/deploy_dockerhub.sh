#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS

TAG="$TRAVIS_BRANCH"


docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
docker push $TRAVIS_REPO_SLUG
