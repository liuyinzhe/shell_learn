# type time
# which time
# type /usr/bin/time

/usr/bin/time -p sleep 2
# real 2.00
# user 0.00
# sys 0.00

/usr/bin/time -v sleep 2s
        # Command being timed: "sleep 2s"
        # User time (seconds): 0.00
        # System time (seconds): 0.00
        # Percent of CPU this job got: 0%
        # Elapsed (wall clock) time (h:mm:ss or m:ss): 0:02.00
        # Average shared text size (kbytes): 0
        # Average unshared data size (kbytes): 0
        # Average stack size (kbytes): 0
        # Average total size (kbytes): 0
        # Maximum resident set size (kbytes): 652
        # Average resident set size (kbytes): 0
        # Major (requiring I/O) page faults: 0
        # Minor (reclaiming a frame) page faults: 211
        # Voluntary context switches: 2
        # Involuntary context switches: 1
        # Swaps: 0
        # File system inputs: 0
        # File system outputs: 0
        # Socket messages sent: 0
        # Socket messages received: 0
        # Signals delivered: 0
        # Page size (bytes): 4096
        # Exit status: 0

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
