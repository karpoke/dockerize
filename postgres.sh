#!/usr/bin/env sh

# https://hub.docker.com/_/postgres/

# install
# docker pull postgres:11  # latest

# https://pythonspeed.com/articles/faster-db-tests/
# -c fsync=off

mkdir -p "$HOME/docker/volumes"

# acceso mediante IP y socket
#docker inspect postgres >/dev/null 2>&1 || docker run \
/usr/bin/docker ps | grep -q docker-postgres || /usr/bin/docker run \
    --rm \
    --name docker-postgres \
    -h postgres \
    -d \
    -p 5432:5432 \
    -v "$HOME/docker/volumes/postgres:/var/lib/postgresql/data" \
    -v /var/run/postgresql:/var/run/postgresql \
    postgres -c fsync=off
