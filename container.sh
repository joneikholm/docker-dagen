#!/usr/bin/env bash
# Øvelse 1: livscyklussen for én container.
set -e

docker run -d --name web nginx:alpine
docker ps
docker exec web ls /usr/share/nginx/html
docker logs web
docker stop web
docker rm web
