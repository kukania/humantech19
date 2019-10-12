set terminal postscript color dashed size 15,2.9 enhanced font 'Helvetica,14' linewidth 1
set output 'fig.eps'
set multiplot layout 1,3 \
              margins 0.10,0.6,0.10,0.80 \
              spacing 0.055,0.055

set label 11 center at graph 0.5, char -2.2 "title below" font ",14"
set xlabel 'Time (msec)' offset 0,0.5
set ylabel 'CDF' offset 2.0
set zeroaxis
#set grid
#set key outside
set key out
set key Left bottom reverse
#set key width -6.5
#set key box

#set key bottom Left box 3

set datafile separator ","

set label 11 'YCSB-D(95:5)'
set xrange [0:2000]
set xtics ("0" 0, "1" 1000, "2" 2000, "3" 3000)
set yrange [0.95:0.9999]
set ytics 0.01

set key maxrows 2
set key at 4900,1.005


show style data
plot \
	"LMKVS(5,3)_YCSB-D_cdf.data" u 1:3 ti "LSM-KVD(5,3)" with lines lw 3 lc rgb "#0A0AD2", \
	"LMKVS(4,2)_YCSB-D_cdf.data" u 1:3 ti "LSM-KVD(4,2)" with lines lw 3 lc rgb "purple", \
	"LSM(2,0)_YCSB-D_cdf.data" u 1:3 ti "LSM(2,0)" with lines lw 3 lc rgb "#8B0000", \

	#"LMKVS(8,5)_YCSB-D_cdf.data" u 1:3 ti "" with lines lw 3, \
	#"LSM(5,0)_YCSB-D_cdf.data" u 1:3 ti "" with lines lw 3, \
	#"LSM(8,0)_YCSB-D_cdf.data" u 1:3 ti "" with lines lw 3, \


unset ylabel

set label 11 'YCSB-Z(5:95)'
set xrange [0:1000]
set xtics ("0" 0, "1" 1000, "2" 2000, "3" 3000)
set yrange [0.95:0.9999]
set ytics 0.01

set key maxrows 1
set key at 2150,1.005

plot \
	"LMKVS(5,3)_YCSB-Z_cdf.data" u 1:3 ti "" with lines lw 3 lc rgb "#0A0AD2", \
	"LMKVS(8,5)_YCSB-Z_cdf.data" u 1:3 ti "LSM-KVD(8,5)" with lines lw 3 lc rgb "green", \
	"LSM(8,0)_YCSB-Z_cdf.data" u 1:3 ti "LSM(8,0)" with lines lw 3 lc rgb "#8B8B8B", \

	#"LMKVS(4,2)_YCSB-Z_cdf.data" u 1:3 ti "" with lines lw 3, \
	#"LSM(2,0)_YCSB-Z_cdf.data" u 1:3 ti "" with lines lw 3, \
	#"LSM(5,0)_YCSB-Z_cdf.data" u 1:3 ti "" with lines lw 3, \


set label 11 'YCSB-A(50:50)'
set xrange [0:2000]
set xtics ("0" 0, "1" 1000, "2" 2000, "3" 3000)
set yrange [0.95:0.9999]
set ytics 0.01

set key maxrows 1
set key at 980,1.010

plot \
	"LMKVS(5,3)_YCSB-A_cdf.data" u 1:3 ti "" with lines lw 3 lc rgb "#0A0AD2", \
	"LMKVS(8,5)_YCSB-A_cdf.data" u 1:3 ti "" with lines lw 3 lc rgb "green", \
	"LMKVS(4,2)_YCSB-A_cdf.data" u 1:3 ti "" with lines lw 3 lc rgb "purple", \
	"LSM(5,0)_YCSB-A_cdf.data" u 1:3 ti "LSM(5,0)" with lines lw 3 lc rgb "#D2691E", \

	#"LSM(8,0)_YCSB-A_cdf.data" u 1:3 ti "LSM(8,0)" with lines lw 3, \
	#"LSM(2,0)_YCSB-A_cdf.data" u 1:3 ti "LSM(2,0)" with lines lw 3, \



#set xlabel 'Time (micro sec)'


