#!/usr/bin/env bash

. ./buildcfg.sh

./build.sh

cd packer/$TARGET
make emulate
cd ..
