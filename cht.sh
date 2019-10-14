#!/usr/bin/env sh

# https://github.com/chubin/cheat.sh

# install
# docker pull karpoke/cheat.sh

docker run \
    -it \
    --rm \
    karpoke/cheat.sh "$@"
