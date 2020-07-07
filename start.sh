#!/bin/bash
cd $(dirname $0)

img_mvn="maven:3.3.9-jdk-8"                               # docker image of maven
m2_cache=~/.m2                                            # the local maven cache dir
proj_home=$PWD

docker run --rm \
  -v $m2_cache:/root/.m2 \
  -v $proj_home:/usr/src/mymaven \
  -w /usr/src/mymaven $img_mvn mvn clean package -U -DskipTests

