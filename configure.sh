#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo "Usage: ./configure.sh <target>"
  exit 0
fi

if [[ -f "targets/$1.mk" ]]; then
  # set specified target as build target
  echo "Copying $1 target configuration file to target.mk..."
  cp targets/$1.mk target.mk
  echo "Configuration completed. Run ./build.sh to compile."
else
  echo "Unknown target $1"
fi
