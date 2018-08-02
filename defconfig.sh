#!/bin/sh
#
#
# Copyright (C) 2018 Ethan Johnson
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

export kerneldir=~/android/lineage/kernel/essential/msm8998

cd $kerneldir
sleep 1
make ARCH=arm64 mata_defconfig menuconfig
sleep 1
cp .config arch/arm64/configs/mata_defconfig
sleep 1
make mrproper
sleep 1 
echo 'defconfig regeneration complete'
