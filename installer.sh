#!/bin/sh

# FORCE_MODEL (k1, k1m, ...) forces the K1 installer even on a custom OS that
# doesn't report ID=buildroot.
INSTALL_DIR=$HOME/pellcorp/rpi
if grep -Fqs "ID=buildroot" /etc/os-release || [ -n "$FORCE_MODEL" ]; then
    INSTALL_DIR=/usr/data/pellcorp/k1
fi

$INSTALL_DIR/installer.sh $@
