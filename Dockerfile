# BUILD_FROM_IMAGE definition MUST be the first (uncommented) line: https://stackoverflow.com/a/78364729
ARG BUILD_FROM_IMAGE=ubuntu:24.04

# Base Image
FROM $BUILD_FROM_IMAGE

# Remove the ubuntu user. Source: https://bugs.launchpad.net/cloud-images/+bug/2005129/comments/2
RUN userdel -r ubuntu
