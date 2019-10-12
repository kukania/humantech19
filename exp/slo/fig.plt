set terminal postscript color dashed size 15,2.8 enhanced 'Helvetica'
set output 'fig.eps'

set multiplot layout 1,6 \
			  margins 0.04,0.99,0.26,0.85 \
 			  spacing 0.055,0.055

set key out

set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set xlabel "(a) YCSB-D(95:5) (Read-latency sensitive)" offset 10,-2.2 font "Helvetica,16"
set ylabel "Throughput (KIOPS)" offset 1.5,0
set yrange [0:60]
unset xrange
#set xtics font "Helvetica,14" offset 10,-2.3
unset xtics
set ytics font "Helvetica,13"
set ytics 10
set grid y
set datafile separator whitespace
set key right Left reverse samplen 1
set key font "Helvetica,13"
set key maxrows 2
set key at 4.5,76

plot "iops/YCSB-D-iops.data" u 2 ti "LSM-KVD(5,3)" lc rgb "#0A0AD2" ,\
	"" u 3 ti "LSM-KVD(4,2)" lc rgb "purple" ,\
	"" u 6 ti "LSM(2)" lc rgb "#8B0000",\

set style data points
set xlabel 'Time (msec)' offset 0,0.5 font "Helvetica,14"
set ylabel 'CDF' offset 2.0
set xrange [0:2000]
set xtics ("0" 0, "1" 1000, "2" 2000, "3" 3000) offset 0,0
set yrange [0.95:0.9999]
set ytics 0.01
set zeroaxis
unset grid
set key default
set key right Left reverse samplen 2
set key font "Helvetica,13"
set key maxrows 2
set key out
set key at 11340,1.0128
set datafile separator ","
plot \
	"latency/LMKVS(5,3)_YCSB-D_cdf.data" u 1:3 ti "LSM-KVD(5,3)" with lp pi 20 ps 0.9 pt 1 lw 3 lc rgb "#0A0AD2", \
	"latency/LMKVS(4,2)_YCSB-D_cdf.data" u 1:3 ti "LSM-KVD(4,2)" with lp pi 20 ps 0.8 pt 5 lw 3 lc rgb "purple", \
	"latency/LSM(2,0)_YCSB-D_cdf.data" u 1:3 ti "LSM(2)" with lp pi 20 ps 0.8 lw 3 lc rgb "#8B0000", \


set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set xlabel "(b) YCSB-Z(5:95) (Heavy-write)" offset 10,-2.2 font "Helvetica,16"
set ylabel "Throughput (KIOPS)" offset 1.5,0
set yrange [0:30]
unset xrange
#set xtics font "Helvetica,14" offset 10,-2.3
unset xtics
set ytics font "Helvetica,13"
set ytics 5
set grid y
set datafile separator whitespace
set key out
set key at 0.57,35
set key samplen 1
set key maxrows 1

plot "iops/YCSB-Z-iops.data" u 2 ti "" lc rgb "#0A0AD2" ,\
	"" u 4 ti "LSM-KVD(8,5)" lc rgb "green" ,\
	"" u 7 ti "LSM(8)" lc rgb "#8B8B8B",\


set style data points
set xlabel 'Time (msec)' offset 0,0.5 font "Helvetica,14"
set ylabel 'CDF' offset 2.0
set xrange [0:1500]
set xtics ("0" 0, "0.5" 500, "1" 1000, "1.5" 1500, "2" 2000, "3" 3000) offset 0,0
set yrange [0.95:0.9999]
set ytics 0.01
set zeroaxis
unset grid
set key default
set key right Left reverse samplen 2
set key font "Helvetica,13"
set key maxrows 1
set key out
set key at 5650,1.007
set datafile separator ","

plot \
	"latency/LMKVS(5,3)_YCSB-Z_cdf.data" u 1:3 ti "" with lp pi 20 ps 0.9 pt 1 lw 3 lc rgb "#0A0AD2", \
	"latency/LMKVS(8,5)_YCSB-Z_cdf.data" u 1:3 ti "LSM-KVD(8,5)" with lp pi 20 ps 0.9 pt 2 lw 3 lc rgb "green", \
	"latency/LSM(8,0)_YCSB-Z_cdf.data" u 1:3 ti "LSM(8)" with lp pi 20 ps 0.9 pt 9 lw 3 lc rgb "#8B8B8B", \


set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set xlabel "(c) YCSB-A(50:50) (Balanced)" offset 10,-2.2 font "Helvetica,16"
set ylabel "Throughput (KIOPS)" offset 1.5,0
set yrange [0:35]
unset xrange
#set xtics font "Helvetica,14" offset 10,-2.3
unset xtics
set ytics font "Helvetica,13"
set ytics 5
set grid y
set datafile separator whitespace
set key right Left reverse samplen 1
set key font "Helvetica,13"
set key maxrows 2
set key at -6.165,44.4
set datafile separator whitespace

plot "iops/YCSB-A-iops.data" u 2 ti "" lc rgb "#0A0AD2" ,\
	"" u 3 ti "" lc rgb "purple" ,\
	"" u 4 ti "" lc rgb "green" ,\
	"" u 5 ti "LSM(5)" lc rgb "#D2691E",\


set style data points
set xlabel 'Time (msec)' offset 0,0.5 font "Helvetica,14"
set ylabel 'CDF' offset 2.0
set xrange [0:1500]
set xtics ("0" 0, "0.5" 500, "1" 1000, "1.5" 1500,  "2" 2000, "3" 3000) offset 0,0 
set yrange [0.95:0.9999]
set ytics 0.01
set zeroaxis
unset grid
set datafile separator ","
set key default
set key right Left reverse samplen 2
set key font "Helvetica,13"
set key maxrows 2
set key out
set key at 600,1.013

plot \
	"latency/LMKVS(5,3)_YCSB-A_cdf.data" u 1:3 ti "" with lp pi 20 ps 0.9 pt 1 lw 3 lc rgb "#0A0AD2", \
	"latency/LMKVS(4,2)_YCSB-A_cdf.data" u 1:3 ti "" with lp pi 20 ps 0.9 pt 5 lw 3 lc rgb "purple", \
	"latency/LMKVS(8,5)_YCSB-A_cdf.data" u 1:3 ti "" with lp pi 20 ps 0.8 pt 2 lw 3 lc rgb "green", \
	"latency/LSM(5,0)_YCSB-A_cdf.data" u 1:3 ti "LSM(5)" with lp pi 20 ps 0.8 pt 6 lw 3 lc rgb "#D2691E", \


