#!/usr/bin/env bash

git submodule init
git submodule update

echo "Source preparation complete! Run ./configure.sh <target> to configure the build target."
