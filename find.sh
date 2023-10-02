# find  path parameter

# 类型搜索
-type d #目录
-type f #文件
-type l #link

# 名字搜索
-name '*.txt'  #通配符
-iname 'LinBei.log' #忽略大小写

# 大小搜索
-size -100M

# 时间搜索
-mtime -7 # modfiy 修改时间，7天以内修改的
-mtime +7 # modfiy 修改时间，7天以外修改的

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


# 排除特定目录(usrA/usrB)
#find .  -path ./usrA -prune -o  -name "*.stats.txt"
# 多个目录 # 注释事项 \(\) 两个注释的括号不能与其它字符连接
find .  \( -path ./usrA -o -path ./usrB \) -prune -o  -name "*.stats.txt" # |xargs -i gzip {} 

  #  -o 是or的 或的作用
  #  -prune  表示忽略
  #  整体思路，先过滤目录，-prune 后再考虑文件名字
  
  #  注意事项：
  #  1)-prune 必须和 -path， -o 一起使用
  #  2）-prune -o 的顺序不 能调换
  #  3）-name等必须放在-prune -o后面才能使用
  #  eg: find . -path ./a -prune -o -name “*.txt”
