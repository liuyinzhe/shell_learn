#!/bin/bash

# 参数模式
# @Note: 传统的接收参数的方法

echo "get parameters from terminal";
echo "The first parameter is $1";
echo "The second parameter is $2";
echo "The third parameter is $3";


#!/bin/bash

# @Note: 1. loop args

for args in "$@"; do
    echo $args
done


#!/bin/bash

for args in "$@"; do
    key=${args%=*}      #获取 key
    value=${args#*=}    #获取 value
    case "$key" in 
          --prefix)
          PREFIX=$value
          echo "PRFFIX=$PREFIX"
    ;;
          --target)
          TARGET=$value
          echo "TARGET=$TARGET"
    ;;
    esac

done

# sh test.sh --prefix=/home  --target=/opt


# [1]Debug 模式
set -x # start debug print

# do something

set +x # start debug print


# [2]Strict 模式
# 开启:单行执行或者pipeline错误即停止
set -e -o pipfail

#来源:https://www.bilibili.com/video/BV1384y1u7yt



# https://www.cnblogs.com/xingmuxin/p/8431970.html
#1、set -e

#"Exit immediately if a simple command exits with a non-zero status."

#在“set -e”之后出现的代码，一旦出现返回值非零，整个脚本就会立即退出。

#2、set -o pipefail

#"If set, the return value of a pipeline is the value of the last (rightmost) command to exit with a  non-zero  status,or zero if all commands in the pipeline exit successfully.  This option is disabled by default."

#在这个设置执行后，其后面的代码，包括管道命令的返回值，为最后一个非零的命令的返回值，或者当管道内的所有命令都执行成功后返回零。


# 目录判断
[-d "/tmp/test" ]
