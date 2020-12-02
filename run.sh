#! /usr/bin/env bash
set -exu
(( ! $# ))
renice -n +19 "$$"

PROJECT=virtual-temple

#cd "`dirname "$(readlink -f "$0")"`"
cd "`dirname "$0"`" # change to the script's directory (not the dir it links to)

docker pull innovanon/virtual-temple:latest

docker stack deploy \
    -c docker-compose.yaml \
    --with-registry-auth \
    "$PROJECT"

