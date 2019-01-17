#!/bin/bash

docker build -t my_tarantube .
docker run --name my_tarantube01 -d -p 5901:5901 -p 6901:6901 my_tarantube

