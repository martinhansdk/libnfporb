#!/bin/bash
truncate --size 0 testfuzz.log

ls -d data/handcrafted/* | while read line; do
  echo -n "#### Running case $line: "
  build/examples/fuzz $line/A.wkt $line/B.wkt &>> testfuzz.log
  if [ $? -eq 0 ]; then
    echo Success
  else
    echo Fail
    exit 1;
  fi
done
