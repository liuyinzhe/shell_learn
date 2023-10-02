# find  path parameter

# 类型搜索
-type d #目录
-type f #普通文件
-type l #link 符号连接
# 不常用
# c 字符设备
# b 块设备
# s 套接字
# p Fifo

# 名字搜索
-name '*.txt'  #通配符
-iname 'LinBei.log' #忽略大小写

# 大小搜索
-size -100M

# 时间搜索
# UNIX/Linux文件系统每个文件都有三种时间戳：
# 访问时间 （-atime/天，-amin/分钟）：用户最近一次访问时间。
# 修改时间 （-mtime/天，-mmin/分钟）：文件最后一次修改时间。
# 变化时间 （-ctime/天，-cmin/分钟）：文件数据元（例如权限等）最后一次修改时间。
-mtime -7 # modfiy 修改时间，7天以内修改的
-mtime +7 # modfiy 修改时间，7天以外修改的

find . -type f -atime -7    #搜索最近七天内被访问过的所有文件
find . -type f -atime 7     #搜索恰好在七天前被访问过的所有文件
find . -type f -atime +7    #搜索被访问过超过七天的所有文件

# 搜索深度控制
-mindepth
-maxdepth

find /var/log -type f -mindepth 1 -maxdepth 4 -iname "*.log" -mtime +7 -exec ls -l {} \;



# 查找空文件
find . -name "*" -type f -size 0c

# 查询出所有的空文件夹
find -type d -empty

# 删除前有提示
find ./ -name 'qipa250.log' -ok rm -rf {} \;


# 排除特定目录(usrA/usrB)下的文件 
#find .  -path ./usrA -prune -o  -name "*.stats.txt"  -type f  |grep -E -v "usrA|usrB"
# 多个目录 # 注释事项 \(\) 两个注释的括号不能与其它字符连接
find .  \( -path ./usrA -o -path ./usrB \) -prune -o  -name "*.stats.txt" -type f |grep -E -v "usrA|usrB" |xargs -i gzip {} 

  #  -o 是or的 或的作用
  #  -prune  表示忽略
  #  整体思路，先过滤目录，-prune 后再考虑文件名字
find .  \( -path ./usrA -o -path ./usrB \) -prune  -type d |grep -E -v "usrA|usrB"
# -prune 仅仅是前缀，需要 额外排除usrA usrB
  #  注意事项：
  #  1)-prune 必须和 -path， -o 一起使用
  #  2）-prune -o 的顺序不 能调换
  #  3）-name等必须放在-prune -o后面才能使用
  #  eg: find . -path ./a -prune -o -name “*.txt”
