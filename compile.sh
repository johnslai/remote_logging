#!/bin/bash
#make -j LOG_LEVEL=logDEBUG4 DEBUG=1 all
source ./cross_env.sh
arm-angstrom-linux-gnueabi-g++ -march=armv7-a -fno-tree-vectorize \
  -mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8 helloworld.c -o helloworld
#make -j ARCH=arm LOG_LEVEL=logDEBUG4 DEBUG=1 all

#scp gdaq root@bbb:
