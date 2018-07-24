#!/bin/bash 

set -ex
DIRNAME=$(dirname "$(pwd)/${0}")
RAILS_ROOT=${DIRNAME}/../
cd ${RAILS_ROOT}
cd dockerfile/

IMAGE_REPOSITORY=book/book
cd base
BASE_IMAGE="7_20180531"
docker build -t ${IMAGE_REPOSITORY}:base-centos-${BASE_IMAGE} .