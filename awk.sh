
# MultiLine to singe line
awk '{if(/>/){if(length(a)>1){print a;a="";};print $1;}else{a=a""$1;}}END{print a;}' input.fa 


# Capitalize the sequence and wrap it with 60 characters
awk '{if(/^>/){print $_;}else{ a=toupper($0);print gensub(/([ATGCN]{60})/,"\\1\n","g",a);}}'  input.fa
#https://www.jianshu.com/p/479286cc0360
