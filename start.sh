#!/bin/sh
xhost +local:docker
docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
  --net host \
  -v /dev/snd:/dev/snd \
  -v /dev/shm:/dev/shm \
  --privileged \
  -e uid=$(id -u) \
  -e gid=$(id -g) \
  -e DISPLAY=unix$DISPLAY \
  --rm \
  --name chrome \
  jsdir/chrome:58.0.3029.96 \
  google-chrome --no-sandbox
