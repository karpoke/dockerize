#!/usr/bin/env sh

# https://hub.docker.com/r/selenium/standalone-chrome
# https://github.com/SeleniumHQ/docker-selenium

/usr/bin/docker run \
    --rm \
    --name docker-selenium \
    -h selenium \
    -d \
    -p 4444:4444 \
    -v /dev/shm:/dev/shm \
    -e SCREEN_WIDTH=1366 \
    -e SCREEN_HEIGHT=768 \
    -e SCREEN_DEPTH=24 \
    -e SCREEN_DPI=74 \
    selenium/standalone-chrome
