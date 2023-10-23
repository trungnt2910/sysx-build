#!/usr/bin/env bash

# NOT TO BE CONFUSED WITH configure.sh! This is only supposed to be called by build.sh and clean.sh.

if [[ "$(uname)" == "Darwin" ]]; then
  CORES=$(sysctl -n hw.ncpu)
else
  CORES=$(nproc --all)
fi

TARGET=$(cat target.mk | grep "TARGET=" | sed -e "s/^TARGET=//" -e "s/\n$//")
WD=$(pwd)

PROJECTS="kernel initrd packer/$TARGET"
