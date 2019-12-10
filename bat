#!/bin/sh

# https://hub.docker.com/r/danlynn/bat/
# https://github.com/sharkdp/bat

/usr/bin/docker run \
    -it \
    --rm \
    -e BAT_THEME \
    -e BAT_STYLE \
    -e BAT_TABS \
    -v "$(pwd):/myapp" \
    karpoke/bat "$@"
