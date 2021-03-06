#!/bin/sh
set -eux

. ./travis/env.sh

export CFLAGS="-I$CACHE_DIR/usr/include -I/usr/share/mingw-w64/include/ -DAL_LIBTYPE_STATIC "

mkdir build_win
cd build_win
cmake .. -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchain-win32.cmake -DUTOX_STATIC=ON -DWIN_XP_LEGACY=ON
make VERBOSE=1
