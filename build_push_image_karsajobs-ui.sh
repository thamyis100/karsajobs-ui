#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app dan tag v1
docker build -t karsajobs-ui:latest .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:latest ghcr.io/thamyis100/karsajobs-ui:latest

# 4. Login ke GitHub Packages
docker login --username thamyis100 --password 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 ghcr.io

# 5. Mengunggah image ke GitHub Packages
docker push ghcr.io/thamyis100/karsajobs-ui:latest
