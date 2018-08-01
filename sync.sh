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

export sourcedir=~/android/lineage
export devicedir=~/android/lineage/device/essential/mata
export kerneldir=~/android/lineage/kernel/essential/msm8998
export scriptdir=~/android/scripts

cd $sourcedir
echo "Syncing"
repo sync -c -f -j4 --force-sync --no-clone-bundle --no-tags
sleep 2
cd $devicedir
echo "Checking out InSaNiTy Device tree"
git remote rm me
git remote add me git@github.com:InSaNiTy351/android_device_essential_mata.git
git fetch me
git checkout me/lineage-15.1
git branch -D lineage-15.1
git checkout -b lineage-15.1
sleep 2
cd $kerneldir
echo "Checking out InSaNiTy Kernel tree"
git remote rm me
git remote add me git@github.com:InSaNiTy351/android_kernel_essential_msm8998.git
git fetch me
git checkout me/lineage-15.1
git branch -D lineage-15.1
git checkout -b lineage-15.1
sleep 2
cd $scriptdir
echo "You're ready to build"
