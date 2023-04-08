# find  path parameter

# 类型搜索
-type d #目录
-type f #文件

# 名字搜索
-name '*.txt'  #通配符
-iname 'LinBei.log' #忽略大小写

# 大小搜索
-size -100M

# 时间搜索
-mtime -7 # modfiy 修改时间，7天以内修改的
-mtime +7 # modfiy 修改时间，7天以外修改的

find /var/log -type f -iname "*.log" -mtime +7 -exec ls -l {} \;
