#!/bin/bash

args="$@"

args="$@ -p 80 --host 0.0.0.0"

file=/data/db.json
if [ -f $file ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

json-server-auth $args
