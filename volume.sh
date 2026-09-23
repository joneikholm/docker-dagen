#!/usr/bin/env bash
# Øvelse 3: en fil, der overlever containeren.
set -e

docker volume create data
docker run --rm -v data:/data alpine sh -c 'echo "hej fra container A" > /data/besked.txt'
docker run --rm -v data:/data alpine cat /data/besked.txt
