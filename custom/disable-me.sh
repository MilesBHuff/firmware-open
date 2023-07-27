#!/usr/bin/env sh

BUILD_TARGET=./coreboot/util/nvramtool
RUN_TARGET=./coreboot/util/nvramtool/nvramtool

[ ! -e "$RUN_TARGET" ] && make -C "$BUILD_TARGET"
sudo "$RUN_TARGET" -w me_state=Disable
