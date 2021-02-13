#!/bin/bash


scripts/setup_apt.sh
scripts/setup_kenzok8.sh
make menuconfig
scripts/build.sh
