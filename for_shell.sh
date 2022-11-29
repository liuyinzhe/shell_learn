for sample in `echo $(grep -v "#" group.txt |cut -f1)`;do

echo ${sample}

done

#group.txt
##sample group
#A  group1
#B  group2
