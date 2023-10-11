# start
startTime=`date '+%Y-%m-%d %H:%M:%S'`
startTime_s=`date +%s`

# 执行程序
sleep 1s

# end
endTime=`date '+%Y-%m-%d %H:%M:%S'`
endTime_s=`date +%s`

# 计算时长(seconds)
sumTime=$[ $endTime_s - $startTime_s ]
# sumTime=97331

# 拆分分钟
days=$((sumTime / 60 / 60 / 24)) # 小时 整除 24(1d)
hours=$(( (sumTime / 60 / 60 ) % 24 )) # 小时 24(1d) 取余
minutes=$((sumTime / 60 % 60)) # 分钟 60(1h) 取余
seconds=$((sumTime % 60)) # 秒 60(1m) 取余

echo "$startTime ---> $endTime" "Total:$days days,$hours hours,$minutes minutes and $seconds seconds"
# Total:1 days,3 hours,2 minutes and 11 seconds
