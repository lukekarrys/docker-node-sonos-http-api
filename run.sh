#!/usr/bin/env sh

docker run \
  --net=host \
  --name sonos \
  --restart=always \
  -d \
  -v `pwd`/settings.json:/app/settings.json \
  -v `pwd`/clips:/app/static/clips \
  -v `pwd`/cache:/app/cache \
  -v `pwd`/presets:/app/presets \
  node-sonos
