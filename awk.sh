
# MultiLine to singe line
awk '{if(/>/){if(length(a)>1){print a;a="";};print $1;}else{a=a""$1;}}END{print a;}' input.fa 


# Capitalize the sequence and wrap it with 60 characters
awk '{if(/^>/){print $_;}else{ a=toupper($0);print gensub(/([ATGCN]{60})/,"\\1\n","g",a);}}'  input.fa
#https://www.jianshu.com/p/479286cc0360





awk 'a[$0]++' filename   #用于输出重复的行

awk '!a[$0]++' filename #用于去掉重复的行

#其主要的原理，是利用AWK的类似字典的a， 用每一行的内容作为索引，如果行不存在 则没有a[$0], 返回 False。
#如果当前行（$0）有内容，则默认 a[$0]=0, 也为False;但是当读到相同内容时，a[$0]=a[$0]+1

#实际上 awk 这里是在判断，因为没写在花括号里；和grep 一个效果

#第二次读到相同的行，a[$0]++返回非0值。

# match 捕获
#https://www.cnblogs.com/timeisbiggestboss/p/7242351.html
# cat test 
# this is chen,and wang,not wan che
awk '{match($0,/.+is([^,]+).+not(.+)/,a);print a[1],a[2]}' test
# chen wan
