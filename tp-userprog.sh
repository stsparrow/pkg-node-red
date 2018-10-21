#!/bin/bash

## Create armv7
(
  mkdir userprog-armv7
  cp -r example/* userprog-armv7
  cp release/node-red-linux-armv7 userprog-armv7/node-red
  chmod +x userprog-armv7/node-red
  cd userprog-armv7 || exit 1;
  tar czvf ../release/tp-node-red-armv7.tar.gz .
)

## Create x64
(
  mkdir userprog-x64
  cp -r example/* userprog-x64
  cp release/node-red-linux-x64 userprog-x64/node-red
  chmod +x userprog-x64/node-red
  cd userprog-x64 || exit 1;
  tar czvf ../release/tp-node-red-x64.tar.gz .
)