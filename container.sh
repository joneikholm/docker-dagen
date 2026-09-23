#!/usr/bin/env bash
# Øvelse 1-5: livscyklussen for containere.
set -e

docker run -d --name web nginx:alpine
docker exec web ls /usr/share/nginx/html
docker logs web
docker run -d --name web2 nginx:alpine
docker ps
docker stop web web2
docker rm web web2
