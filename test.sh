#!/bin/bash

truncate --size 0 test.log

ls -d data/handcrafted/* | while read line; do
  echo -n "#### Running case $line: "
  build/examples/nfp $line/A.wkt $line/B.wkt &>> test.log
  if [ $? -eq 0 ]; then
    echo Success
  else
    echo Fail
    exit 1;
  fi
done
