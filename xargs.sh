
# 并行执行 
# -P 进程数
# -n 每个进程执行的命令数量
# -i 使用占位符{}
nohup find ./ -type f -name 'final.contigs.fa.out' |xargs  -P 4 -n 1 -i  gzip {} & 
