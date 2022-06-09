#!/bin/bash -e
#./clone-buildroot.sh
cp -v buildroot-config/.config buildroot/*/
make -C buildroot/*/ -j$(nproc) BR2_EXTERNAL=../../buildroot-customizations nconfig
cp -v buildroot/*/.config buildroot-config
