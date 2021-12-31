# rename 分C与perl 版本
# which rename 然后 less rename 全路径看下，二进制文件就是C 版本
# -_-, 我居然在用C 版本；perl版本的 正则多好用呀...

# C version
rename port prot *.tsv

# perl version
rename 's/port/prot/  *.tsv
