#!/bin/bash
echo "***************************"
echo "***** Testing the code ********"
echo "***************************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -u $(id -u):$(id -g) -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.9.11 "$@"
