#!/bin/bash

set -e

scripts/feeds update -a
scripts/feeds install -a
make defconfig
make -j8 download V=s
make -j1 V=s
