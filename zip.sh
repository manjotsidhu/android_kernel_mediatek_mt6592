#!/bin/bash
 
#
# Copyright © 2017, Manjot Sidhu "manjotsidhu" <manjot.gni@gmail.com>
#
# Custom build script
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#
kernel=android_kernel_mediatek_mt6592
zimage=tools/zImage_with_header
echo "--> Making Flashable Zip"
cp $zimage tools/kernel_flashable/tools
mv tools/kernel_flashable/tools/zImage_with_header tools/kernel_flashable/tools/zImage
cd tools/kernel_flashable/
zip kernel.zip -r *
mv kernel.zip ../../
