#!/bin/bash


curl \
-u admin:1167b143ac7bc691547463215ce908a71d `# Replace with your user and API token` \
-X POST http://jenkins.local:8080/job/jenkins-ansible-db/buildWithParameters?delay=0sec \
--data-urlencode AGE=23


curl \
-u admin:1167b143ac7bc691547463215ce908a71d `# Replace with your user and API token` \
-X POST http://jenkins.local:8080/job/job_trigger_using_bash/build?delay=0sec
