#!/bin/bash

set -ex

TIMESTAMP=`date +%Y%m%d%H%M`
IMAGE_TAG_PREFIX=$USER/ubuntu-base
IMAGE_TAG_VERSION=24.04

# BUILD ARGUMENTS:
BUILD_FROM_IMAGE=ubuntu:${IMAGE_TAG_VERSION}

docker build \
    -f Dockerfile \
    --tag=${IMAGE_TAG_PREFIX}:${IMAGE_TAG_VERSION}-${TIMESTAMP} \
    --tag=${IMAGE_TAG_PREFIX}:${IMAGE_TAG_VERSION} \
    --tag=${IMAGE_TAG_PREFIX}:latest \
    --build-arg BUILD_FROM_IMAGE="${BUILD_FROM_IMAGE}" \
    .
