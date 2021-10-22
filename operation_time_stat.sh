#!/bin/bash
set -evx

#获取时间戳：自UTC 时间 1970-01-01 00:00:00 以来所经过的秒数
start_stamp=$(date +%s)
#时间戳转化为时间格式
echo_start=$(date -d @${start_stamp} "+%Y-%m-%d %H:%M:%S")
echo "start: ${echo_start}"
#执行程序
sleep 1s 
end_stamp=$(date +%s)
echo_end=$(date -d @${end_stamp} "+%Y-%m-%d %H:%M:%S")
echo "end: ${echo_end}"
seconds=$(expr ${end_stamp} - ${start_stamp} )
echo "use ${seconds} seconds."
