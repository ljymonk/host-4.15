#!/bin/bash
#please prepare gim-api sriov_drv and kalloc ready in drivers folder before building kernel
#check drivers/Makefile for details
fakeroot make-kpkg --initrd --append-to-version=$1 kernel_image kernel_headers -j `grep -c ^processor /proc/cpuinfo`
