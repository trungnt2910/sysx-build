#!/usr/bin/env bash

if [[ -d kernel ]]; then
  # kernel source already exists, update it
  echo "Updating kernel source..."
  echo "NOTE: This will discard ALL changes!\nThe current version of the kernel can be found at kernel-old/"

  # save a backup
  rm -rf kernel-old/
  mkdir kernel-old
  cp -R kernel/* kernel-old/

  # synchronize source
  cd kernel
  git fetch origin
  git reset --hard origin/main
  git clean -f -d
  make clean # for safe measure
  cd ..
else
  # clone kernel source
  echo "Kernel source not found, cloning..."
  git clone https://github.com/itsmevjnk/sysx.git kernel
fi

echo "Source preparation complete! Run ./configure.sh <target> to configure the build target."
