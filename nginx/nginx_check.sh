#!/bin/bash
#A=`ps -C nginx --no-header | wc -l`
while true
do 
if [ `ps -C nginx --no-header | wc -l` -eq 0 ];then
    /home/opt/nginx-1.6/sbin/nginx #尝试重新启动nginx
    sleep 2  #睡眠2秒
    if [ `ps -C nginx --no-header | wc -l` -eq 0 ];then
        killall keepalived #启动失败，将keepalived服务杀死。将vip漂移到其它备份节点
    fi
fi
sleep 3s
done