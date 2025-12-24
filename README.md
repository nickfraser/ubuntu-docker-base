# An Alternative Docker Base Image for Ubuntu

Since Ubuntu 23.04, the default base images from ubuntu come with an [initial user created](https://askubuntu.com/questions/1513927/ubuntu-24-04-docker-images-now-includes-user-ubuntu-with-uid-gid-1000),
called `ubuntu`.
While I'm not opinionated on whether this is or is not a good idea in general,
it unfortunately breaks several of my own `docker` image build script.
As such, the purpose of this repo is to have a source of recent Ubuntu docker base images _without_ this user.
Note, we follow [this simple method](https://bugs.launchpad.net/cloud-images/+bug/2005129/comments/2) to remove the `ubuntu` user.

## Prerequisites

Either `docker` or `podman`.

## Building Image Locally

A local version of this image can be built as follows:

```bash
./build-local.sh
```

## Using a Pre-Built Image

TODO
