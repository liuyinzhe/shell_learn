

# sed
# sed [OPTION] rule input-file
# sed [选项]   [动作] 输入文件

# -i  # 不带后缀，则是源文件编辑
#   -i[SUFFIX], --in-place[=SUFFIX]
#                  edit files in place (makes backup if SUFFIX supplied)

# -r  # 补充正则表达式
#   -r, --regexp-extended
#                 use extended regular expressions in the script.

# -e  # 多条命令，顺序执行
#  -e script, --expression=script
#                 add the script to the commands to be executed

# 前置控制符
# s 替换
echo 'abcd1234abcd' | sed "s/a/A/"

# 分隔符任意
echo '/old/path' |sed "s#/old/path#/new/path#"
echo '/old/path' |sed "s$/old/path$/new/path$"

# 后置控制符
#[1]# g(global)全局替换
echo 'abcd1234abcd' | sed "s/a/A/g"

#[2]# d(delete)删除
df -h | sed '/tmpfs/d'
#删除第3~5行
cat text.txt | sed '3,5d'  

#[3]# i(insert)插入
#插入在第1行,原第一行向下挪到第二行，以此类推
echo  '123\nabc' | sed '1i456'

#[4]# a(append) 追加

#追加到1行后面
echo  '123\nabc' | sed '1a456'
#在匹配行的下一行追加内容
echo  '123\nabc' | sed '/123/a456'

#[5]#c(copy)	替换(覆盖粘贴行)，将选定行替换为指定内容
#  -c, --copy
#                 use copy instead of rename when shuffling files in -i mode
# 第一行替换
echo  '123\nabc' | sed '1c456'
# 匹配行替换
echo  '123\nabc' | sed '/ss/c456'

#[6]# p(print)	打印，输出指定行

#输出3~5行
cat text.txt | sed -n '3,5p'  
#输出匹配到the 的行
sed -n '/the/p' 1.txt 

#[7]# -n 关闭匹配行的自动打印，与p控制符控制输出
#  -n, --quiet, --silent
#                 suppress automatic printing of pattern space
# -n 过滤某行
df -h | sed '/tmpfs/d' | sed -n '1p'

# -n 过滤非某行 #不过滤第一行
df -h | sed '/tmpfs/d' | sed -n '1!p'



#[8]# = 输出匹配的行号
sed -n '/FM/=' samples.txt

#https://blog.csdn.net/qq_45905840/article/details/126269071


# 替换换行符命令
#sed读取一行时，会先把换行符去掉，处理完后再添加上，所以进行换行符替换时，必须使用sed中的特殊命令。

# 两者等价
#sed ':label;N;s/\n/:/;b label' filename
#sed ':label;N;s/\n/:/;t label' filename
#命令解释：

#:label; 这是一个标签，用来实现跳转处理，名字可以随便取(label),后面的b label就是跳转指令
#N; N是sed的一个处理命令，追加文本流中的下一行到模式空间进行合并处理，因此是换行符可见
#s/\n/:/; s是sed的替换命令，将换行符替换为冒号
#b label 或者 t label b / t 是sed的跳转命令，跳转到指定的标签处

#https://blog.csdn.net/dualvencsdn/article/details/120721476
