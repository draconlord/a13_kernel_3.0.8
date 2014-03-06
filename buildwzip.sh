#!/bin/bash
set -e

buildroot/scripts/common.sh $@

if test -f "makezip/nandc.img"; then rm makezip/nandc.img;fi
rm -rf makezip/system
mkdir makezip/system
mkdir makezip/system/vendor
mkdir makezip/system/vendor/modules
cp out/android/nandc.img makezip/nandc.img
cp -avr out/android/lib/modules/3.0.8+ makezip/system/vendor/modules
cd makezip
zip -r ../out/android/A700_CUSTOM_KERNEL.zip .




