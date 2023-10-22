
## 切片
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
echo ${string:(-1)}
# output: z

# 输出输出末尾2个字符
echo ${string:(-2):2}
# output: yz
