#!/bin/bash

#docker system prune -a
docker container rm -f react-test
#docker images purge
docker build -t react-test .
docker run --name react-test --env-file ./.env -p 3000:3000 react-test
