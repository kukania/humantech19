set terminal postscript color dashed size 8,3.7 enhanced font 'Helvetica,14' linewidth 1
set output 'exp2.eps'
set multiplot layout 2,3 \
             margins 0.1,0.95,0.15,0.87 \
            spacing 0.1,0.2

#set label 11 center at graph 0.5,char 0.5 "title below" font ",13"
set xlabel 'Time (ms)' offset 0,0.5
set zeroaxis
#set grid
#set key outside
set key maxrows 1
set key out
set key at 16900,1.025
set key Left reverse
#set key width -3
#set key box

set datafile separator ","

#set label 11 'A' at 6000,1
set xrange [0:5000]
set xtics 2500
set xtics ("0" 0, "2.5" 2500, "5" 5000)
set yrange [0.95:0.9999]
set ytics 0.01
set title 'A' offset 0,-0.75
plot \
	"./data/hash8/workloada.csv" u 1:3 ti "Hash" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm/workloada.csv" u 1:3 ti "LSM-KVD" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm_hw/workloada.csv" u 1:3 ti "LSM-KVD+" with lp pi 50 lw 2 ps 0.8, \

unset ylabel


#set label 11 'B'
set xrange [0:5000]
set xtics 2500
set xtics ("0" 0, "2.5" 2500, "5" 5000)
set yrange [0.95:0.9999]
set ytics 0.01
set title 'B'
plot \
	"./data/hash8/workloadb.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm/workloadb.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm_hw/workloadb.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \

#set xlabel 'Time (ms)'

#set label 11 'C'
set xrange [0:5000]
set xtics 2500
set xtics ("0" 0, "2.5" 2500, "5" 5000)
set yrange [0.95:0.9999]
set ytics 0.01
set title 'C'
plot \
	"./data/hash8/workloadc.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm/workloadc.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm_hw/workloadc.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \


#set label 11 'D'
set xrange [0:5000]
set xtics 2500
set xtics ("0" 0, "2.5" 2500, "5" 5000)
set yrange [0.95:0.9999]
set ytics 0.01
set title 'D'
plot \
	"./data/hash8/workloadd.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm/workloadd.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \
	"./data/lsm_hw/workloadd.csv" u 1:3 ti "" with lp pi 50 lw 2 ps 0.8, \

#set label 11 'E'
set xrange [0:40000]
set xtics 20000
set xtics ("0" 0, "20" 20000, "40" 40000)
set yrange [0.95:0.9999]
set ytics 0.01
set title 'E'
plot \
	"./data/hash8/workloade.csv" u 1:3 ti "" with lp pi 400 lw 2 ps 0.8, \
	"./data/lsm/workloade.csv" u 1:3 ti "" with lp pi 100 lw 2 ps 0.8, \
	"./data/lsm_hw/workloade.csv" u 1:3 ti "" with lp pi 100 lw 2 ps 0.8, \

set label 11 'F'
set xrange [0:2500]
set xtics 2500
set xtics ("0" 0, "2.5" 2500, "5" 5000)
set yrange [0.95:0.9999]
set ytics 0.01
set title 'F'
plot \
	"./data/hash8/workloadf.csv" u 1:3 ti "" with lp pi 25 lw 2 ps 0.8, \
	"./data/lsm/workloadf.csv" u 1:3 ti "" with lp pi 25 lw 2 ps 0.8, \
	"./data/lsm_hw/workloadf.csv" u 1:3 ti "" with lp pi 25 lw 2 ps 0.8, \


