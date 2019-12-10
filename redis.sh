#!/bin/sh

# https://hub.docker.com/_/redis/

# install
# docker pull redis:4.0.6  # not latest

# all redis.conf params can be passed as arguments

mkdir -p "$HOME/docker/volumes"

/usr/bin/docker ps | grep -q docker-redis || /usr/bin/docker run \
    --rm \
    --name docker-redis \
    -h redis \
    -d \
    -p 6379:6379 \
    -v "$HOME/docker/volumes/redis":/data \
    redis redis-server --databases 4096
