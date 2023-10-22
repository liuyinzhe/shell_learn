
## 1.切片
# ${variable_name:start_position:length}
# index 基于 0-base
string=abcdefghijklmnopqrstuvwxyz

# 从第5个字符输出后续序列
echo ${string:4} 
# output: efghijklmnopqrstuvwxyz

# 输出从第5个字符开始，输出8位字符
echo ${string:4:8}
# output: efghijkl

# 输出最后一个字符
echo ${string:-1}
# output: z

# 输出输出末尾2个字符
echo ${string:-2:2}
# output: yz


## 2.获取字符串长度 
parameter='abc'
echo ${#parameter} # 类似perl
# output: 3

## 3.字符串截取
# word 表示通配符，如*
# ${parameter%word} 最小限度从后面截取word
# ${parameter%%word} 最大限度从后面截取word
# ${parameter#word} 最小限度从前面截取word
# ${parameter##word} 最大限度从前面截取word

var=https://pan.baidu.com/pcloud/home

# 3.1 最小限度从后面截取word ${parameter%word} 
echo ${var%/*} # 从后面，最小限度(删掉一个匹配) /home
# output: https://pan.baidu.com/pcloud

echo ${var%hom*} # 从后面，最小限度(删掉一个匹配) /home
# output: https://pan.baidu.com/pcloud/

# 3.2 最大限度从后面截取word ${parameter%%word}
echo ${var%%baidu*}
# output: https://pan.

# 3.3 最小限度从前面截取word
echo ${var#*/}
# output: /pan.baidu.com/pcloud/home

# 3.4 最大限度从前面截取word  ${parameter##word} 
echo ${var##*/}
# output: home

# 3.5 无效写法,输出是原始结果
echo ${var%*/}
echo ${var%%*/}
echo ${var#/*}
echo ${var##/*}
# output:
https://pan.baidu.com/pcloud/home
https://pan.baidu.com/pcloud/home
https://pan.baidu.com/pcloud/home
https://pan.baidu.com/pcloud/home

