#!/bin/bash

make defconfig
make -j8 download V=s
make -j1 V=s
