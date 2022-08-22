# shell_learn

```bash
shell_name=$(echo $(basename $0))
# $() 讲返回值转换为字符串
echo ${shell_name}
# ${}中间为变量名，可以不带{}，主要应用于变量名与后面内容区分时

tmp_string="0123456789"
# ${string: start :length}
# 0-base
echo ${tmp_string:2:4}
# 结果 2345
echo ${tmp_string:2:-5}
# 结果 234


```
