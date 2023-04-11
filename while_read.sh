# 生成批量脚本

while read part ;do
rm ${part}.sh
echo -e "/software/Bin/blastp \\
    -query ${PWD}/cas_port.faa.split/cas_port.${part}.faa \\
    -out cas_port.${part}.blast \\
    -db /database/NR/nr \\
    -outfmt 6 \\
    -evalue 1e-5 \\
    -max_target_seqs 1 \\
    -max_hsps 1 \\
    -num_threads 10" >${part}.sh

done < part_list

#part_list内容
##part_001
##part_002


# 生成批量脚本
rm batch.sh
while read part type ;do

echo -e "$type\t$part">>batch.sh

done < part_list

#part_list内容
##part_001  A
##part_002  B
