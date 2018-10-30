#!/bin/bash
# whisshe
# 2018-6-28
# 一键部署shadowsocks
pwd=`pwd`
export pwd
source $pwd/functions

userVerify ||exit 1
installDepends ||exit 1
checkPV ||exit 1
versionVerify "$pv" 2.7* python ||exit 1
versionVerify "$pipV" [0-9]* pip ||exit 1
ssInstall ||exit 1
ss_config ||exit 1
scripts ||exit 1
rm $pwd/tmp -f
