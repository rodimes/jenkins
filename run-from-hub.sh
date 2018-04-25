#!/bin/bash -e
set -o pipefail

. bin/build.sh


RESTART="unless-stopped"

docker stop jenkins || true

docker rm jenkins || true

docker network create --driver bridge web || true

docker run -d -p8080:8080 -p50000:50000 --network=web --name=jenkins --hostname jenkins --restart ${RESTART} rodimes/jenkins

