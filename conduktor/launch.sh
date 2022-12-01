#!/bin/zsh

docker-compose up -d

docker run --rm \
  -p "8080:8080" --pull=always \
  --mount "type=bind,source=$PWD/platform-config.yaml,target=/opt/conduktor/default-platform-config.yaml" \
conduktor/conduktor-platform:latest