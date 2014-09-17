#!/bin/bash
docker run --rm \
  -ti \
  -v `pwd`/conf:/rathena/conf \
  -p 6900:6900 \
  -p 5121:5121 \
  -p 6121:6121 \
  --link rathena-db:mysql \
  marksteve/rathena bash

