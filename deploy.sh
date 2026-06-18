#!/bin/bash
cd /opt/webapp || exit 1
git pull origin main
docker build -t minu-veeb .
docker rm -f webapp || true
docker run -d -p 8080:80 --name webapp minu-veeb
