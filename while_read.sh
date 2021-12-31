# 生成批量脚本
while read part ;do

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
