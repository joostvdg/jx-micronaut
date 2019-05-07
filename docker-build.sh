#!/bin/sh
docker build . -t jx-micronaut
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run --network host jx-micronaut"
