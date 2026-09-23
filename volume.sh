#!/usr/bin/env bash
# Øvelse 11-13: en fil, der overlever containeren.
set -e

docker volume create data
docker run --rm -v data:/data alpine sh -c 'echo "hej fra container A" > /data/besked.txt'
docker run --rm -v data:/data alpine cat /data/besked.txt

# Øvelse 12: uden volumen er filen der ikke.
! docker run --rm alpine cat /data/besked.txt
echo "Uden volumen: ingen fil. Som forventet."

# Øvelse 13: dit eget image med skuffen.
docker run -d --name site2 -v data:/app/data minside
docker exec site2 sh -c 'echo "hej fra mit image" > /app/data/fra-image.txt'
docker rm -f site2
docker run --rm -v data:/data alpine cat /data/fra-image.txt
