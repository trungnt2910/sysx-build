#!/usr/bin/env bash

. ./buildcfg.sh

STARTTIME=$(date +%s)
for PRJ in $PROJECTS; do
  echo "Compiling project $PRJ."
  cd $PRJ
  WORKDIR=$WD make -j$CORES
  cd ..
done
ELAPSED=$(($(date +%s) - ($STARTTIME)))

echo "Compilation completed. Elapsed time: $ELAPSED second(s)."
