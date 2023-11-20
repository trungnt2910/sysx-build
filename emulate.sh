#!/usr/bin/env bash

set -e

. ./buildcfg.sh

./build.sh

cd packer/$TARGET
make emulate
cd ..
