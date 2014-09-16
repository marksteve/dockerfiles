#!/bin/bash
docker run --rm \
  -ti \
  -v `pwd`/conf:/rathena/conf \
  -v ~/ro/resources:/roBrowser/client/resources \
  -v ~/ro/BGM:/roBrowser/client/BGM \
  -v ~/ro/data:/roBrowser/client/data \
  -p 6900:6900 \
  -p 5121:5121 \
  -p 6121:6121 \
  -p 8080:8080 \
  --link rathena-db:mysql \
  marksteve/rathena bash

