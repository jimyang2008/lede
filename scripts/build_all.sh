#!/bin/bash


. scripts/fix_path.sh
scripts/setup_apt.sh
scripts/setup_kenzok8.sh
make menuconfig
scripts/build.sh
