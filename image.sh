#!/usr/bin/env bash
# Øvelse 9: byg, start, hent, fjern — og kan køres to gange i træk.
set -e

docker build -t minside .
docker run -d --name site -p 8080:8000 minside
sleep 2
curl -f http://localhost:8080
docker rm -f site
