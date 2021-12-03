# type time
# which time
# type /usr/bin/time

/usr/bin/time -p sleep 2
# real 2.00
# user 0.00
# sys 0.00


/usr/bin/time -f "real %e\nuser %U\nsys %S\nmax_mem %M\nmean_mem %t\nsys_io_i %I\nsys_io_o%Innet_io_i %r\nnet_io_o %s\n\$? %x" sleep 2s
# real 2.00
# user 0.00
# sys 0.00
# max_mem 672
# mean_mem 0
# sys_io_i 0
# sys_io_o0nnet_io_i 0
# net_io_o 0
# $? 0
