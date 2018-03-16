#!/bin/bash -e

. bin/build.sh

docker run --rm -d -p 8080:8080 -p 50000:50000 rodimes_jenkins
