
#MultiLine to singe line
awk '{if(/>/){if(length(a)>1){print a;a="";};print $1;}else{a=a""$1;}}END{print a;}' input.fa 
