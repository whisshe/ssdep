#!/bin/bash
#检测ssserver的状态
portCount=`netstat -tpln|grep ssPort|wc -l`
today=`date +%Y%m%d`
delday=$(( today - 3 ))
[[ $portCount == 1 ]] || /usr/bin/ssserver -c /etc/shadowsocks.json -d restart
echo `date`----true >> ~/ss-status-$today
rm ~/ss-status-$delday

