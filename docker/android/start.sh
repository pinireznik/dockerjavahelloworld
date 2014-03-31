#!/bin/bash

docker kill android
docker rm android
docker run -name android -d preznik/android
docker inspect android |grep IPAddress


