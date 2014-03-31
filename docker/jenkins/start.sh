#!/bin/bash

docker kill jenkins
docker rm jenkins
docker run -d -name jenkins -p 8080:8080 -v `pwd`/jenkins_home:/var/jenkins_home preznik/jenkins

