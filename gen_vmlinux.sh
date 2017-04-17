#!/bin/bash - 
#===============================================================================
#
#          FILE: gen_vmlinux.sh
# 
#         USAGE: ./gen_vmlinux.sh 
# 
#   DESCRIPTION: 
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
./mkimage -A arm -O linux -T kernel -a 0x7fc0 -e 0x8000 -d 970image vmlinux.ub
#出现某些机器默认的mkimage误把970image识别为gzip压缩包,请使用本地上传的mkimage程序。
