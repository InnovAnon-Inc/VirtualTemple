#! /usr/bin/env bash
set -exu
(( ! $# ))
renice -n +19 "$$"

PROJECT=virtual-temple

#cd "`dirname "$(readlink -f "$0")"`"
cd "`dirname "$0"`" # change to the script's directory (not the dir it links to)

docker run -v virtual-temple_innovanon:/ssl --name helper busybox true
docker cp /opt/keys/virtual-temple.pvk.pem helper:/ssl/key.pem
docker cp /opt/keys/virtual-temple.chain.pem helper:/ssl/cert.pem
docker rm helper
