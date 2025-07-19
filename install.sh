#!/bin/bash
set -e

echo "[+] Building Docker image..."
docker build -t fastapi-jwt-demo .
echo "[+] Starting container..."
docker run -d --rm --name fastapi-jwt-demo -p 8000:8000 fastapi-jwt-demo
(sleep 1; echo '[+] Container started on http://localhost:8000') &
