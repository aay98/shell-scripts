#!/bin/bash
curl -O -J -L https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-linux-x86_64
chmod +x docker-compose-linux-x86_64
sudo cp ./docker-compose-linux-x86_64 /usr/bin/docker-compose
