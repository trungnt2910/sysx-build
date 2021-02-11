#!/usr/bin/env bash

. ./buildcfg.sh

STARTTIME=$(date +%s)
for PRJ in $PROJECTS; do
  echo "Cleaning project $PRJ."
  cd $PRJ
  WORKDIR=$WD make clean
  cd ..
done
ELAPSED=$(($(date +%s) - ($STARTTIME)))

echo "Cleaning completed. Elapsed time: $ELAPSED second(s)."
