#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i /opt/prod /tmp/.auth roshi@192.168.165.65:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish roshi@192.168.165.65:/tmp/publish
ssh -i /opt/prod roshi@192.168.165.65 "/tmp/publish"
