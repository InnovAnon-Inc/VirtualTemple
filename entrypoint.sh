#! /usr/bin/env bash
set -exuo pipefail
# TODO
#(( ! $# ))
renice -n +19 "$$"

[[ -e /run/secrets/key.pem ]]
[[ -e /run/secrets/cert.pem ]]
npm start

