#!/bin/bash - 
#===============================================================================
#
#          FILE: gen_vmlinux.sh
# 
#         USAGE: ./gen_vmlinux.sh 
# 
#   DESCRIPTION: 下面的数值和nand上的特性有关
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dr. Fritz Mehner (fgm), mehner.fritz@fh-swf.de
#  ORGANIZATION: FH Südwestfalen, Iserlohn, Germany
#       CREATED: 04/13/2016 14:14
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
mkfs.ubifs -r ../rootfs.glibc  -m 2048 -e 124KiB -c 165 -F  -o ubirootfs.pkg
ubinize -o rootfs.img -m 2048 -p 128KiB -s 2048 -e 126976 ./ubirootfs.cfg
mkfs.ubifs -r data  -m 2048 -e 124KiB -c 412 -F  -o ubidata.pkg
ubinize -o data.img -m 2048 -p 128KiB -s 2048 -e 126976 ./ubidata.cfg
