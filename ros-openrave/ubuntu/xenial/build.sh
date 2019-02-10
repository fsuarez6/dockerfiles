#!/bin/bash
set -e
VER=0.1
TAG=ros-openrave

set -eu
# Build
docker build -t ${TAG} .
# Tag
docker tag ${TAG} ${TAG}:${VER}
docker tag ${TAG} ${TAG}:latest
