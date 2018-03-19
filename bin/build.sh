#!/bin/bash -e
set -o pipefail

CONTAINER_NAME="jenkins"

docker build -t ${CONTAINER_NAME} .
