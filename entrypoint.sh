#! /usr/bin/env bash
set -exuo pipefail
# TODO
#(( ! $# ))
renice -n +19 "$$"

[[ -e /usr/local/lib/node_modules/virtual-temple/ssl/key.pem ]]
[[ -e /usr/local/lib/node_modules/virtual-temple/ssl/cert.pem ]]
npm start

