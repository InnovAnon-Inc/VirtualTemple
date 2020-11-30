#! /usr/bin/env bash
set -exu
(( ! $# ))
renice -n +19 "$$"

PROJECT=virtual-temple

#cd "`dirname "$(readlink -f "$0")"`"
cd "`dirname "$0"`" # change to the script's directory (not the dir it links to)

docker stack rm "$PROJECT" # remove existing containers

docker stack deploy --compose-file docker-compose.yaml "$PROJECT" # deploy container

