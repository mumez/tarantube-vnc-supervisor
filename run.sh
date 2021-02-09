#!/bin/bash

docker build -t my_tarantube .
docker run --name my_tarantube01 -d -p 5900:5900 -p 6901:6901 my_tarantube

