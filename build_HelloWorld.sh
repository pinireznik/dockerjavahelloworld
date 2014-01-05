#!/bin/bash
# Dockerfile for java build
MVN_CACHE=mvn-repo

pushd HelloWorld/src

#this folder will be user as a maven cache outside of containers to avoid downloading all dependancies every time we create container# 
if [ ! -d "$MVN_CACHE" ]; then
  mkdir $MVN_CACHE
fi

time docker run -v `pwd`:`pwd` -v `pwd`/$MVN_CACHE:/root/.m2/repository/ -w `pwd` preznik/jdk7-oracle_maven mvn install

popd
