#!/bin/bash
if [ -z "$ANGSTROM_PATH" ]; then 
  echo "Please environment ANGSTROM_PATH to path of angstrom directory before running this command"
  exit
fi

source ${ANGSTROM_PATH}/environment-angstrom-v2013.*
export PATH=${OE_BUILD_TMPDIR}-eglibc/sysroots/`uname -m`-linux/usr/bin/armv7ahf-vfp-neon-angstrom-linux-gnueabi:${PATH}
export PKG_CONFIG_SYSROOT_DIR=${OE_BUILD_TMPDIR}-eglibc/sysroots/beaglebone
export PKG_CONFIG_PATH=${OE_BUILD_TMPDIR}-eglibc/sysroots/beaglebone/usr/lib/pkgconfig/
