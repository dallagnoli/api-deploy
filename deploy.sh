#!/bin/bash

set -e

echo "Loading image..."
gunzip -c image.tar.gz | docker load

echo "Stopping old container..."
docker stop api || true
docker rm api || true

echo "Starting new container..."
docker run -d \
  --name api \
  -p 3000:3000 \
  --restart always \
  api:latest

echo "Deploy done."