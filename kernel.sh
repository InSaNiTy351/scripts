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
export outdir=~/android/lineage/out/target/product/mata

echo 3 | sudo tee /proc/sys/vm/drop_caches

cd $sourcedir
make clobber
sleep 1
echo "Building update.zip"
. build/envsetup.sh
sleep 1
lunch lineage_mata-userdebug
sleep 1
time make -j4 bootimage
echo "Build Compleated"
cd $outdir
ls

