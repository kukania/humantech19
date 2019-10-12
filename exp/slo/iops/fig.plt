set terminal postscript color dashed enhanced 'Helvetica'
set output 'fig.eps'

set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set ylabel "Throughput (KIOPS)" offset 1.5,0
set yrange [0:]
set xtics font "Helvetica,12"
#set xrange [1:]
set ytics font "Helvetica,13"
set grid y
set key right Left reverse samplen 1
set key font "Helvetica,14"
set key maxrows 2
set key out

set multiplot layout 1,3 \
			  margins 0.10,0.75,0.10,0.4 \
 			  spacing 0.07,0.07

set key maxrows 2 
set key at 3.95,78
plot "YCSB-D-iops.data" u 2:xtic(1) ti "LSM-KVD(5,3)" lc rgb "#0A0AD2" ,\
	"" u 3 ti "LSM-KVD(4,2)" lc rgb "purple" ,\
	"" u 6 ti "LSM(2,0)" lc rgb "#8B0000",\

unset ylabel

set key maxrows 1
set key at 3.3,36
plot "YCSB-Z-iops.data" u 2:xtic(1) ti "" lc rgb "#0A0AD2" ,\
	"" u 4 ti "LSM-KVD(8,5)" lc rgb "green" ,\
	"" u 7 ti "LSM(8,0)" lc rgb "#8B8B8B",\

set key maxrows 4
set key at -.08,45.5
plot "YCSB-A-iops.data" u 2:xtic(1) ti "" lc rgb "#0A0AD2" ,\
	"" u 3 ti "" lc rgb "purple" ,\
	"" u 4 ti "" lc rgb "green" ,\
	"" u 5 ti "LSM(5,0)" lc rgb "#D2691E",\


#plot "YCSB-D-iops.data" u 2:xtic(1) ti "LSM-KVD(5,3)" lc rgb "#FAFAD2" ,\
	#"" u 3 ti "LSM-KVD(4,2)" lc rgb "#90EE90" ,\
	#"" u 4 ti "LSM-KVD(8,5)" lc rgb "#228B22" ,\
	#"" u 5 ti "LSM(5,0)" lc rgb "#D2691E",\
	#"" u 6 ti "LSM(2,0)" lc rgb "#8B0000",\
	#"" u 7 ti "LSM(8,0)" lc rgb "#8B0000",\
#
#unset ylabel
#
##set size 0.4,0.5
#plot "YCSB-A-iops.data" u 2:xtic(1) ti "" lc rgb "#FAFAD2" ,\
	#"" u 3 ti "" lc rgb "#90EE90" ,\
	#"" u 4 ti "" lc rgb "#228B22" ,\
	#"" u 5 ti "" lc rgb "#D2691E",\
	#"" u 6 ti "" lc rgb "#8B0000",\
	#"" u 7 ti "" lc rgb "#8B0000",\
#
##set size 0.4,0.5
#plot "YCSB-Z-iops.data" u 2:xtic(1) ti "" lc rgb "#FAFAD2" ,\
	#"" u 3 ti "" lc rgb "#90EE90" ,\
	#"" u 4 ti "" lc rgb "#228B22" ,\
	#"" u 5 ti "" lc rgb "#D2691E",\
	#"" u 6 ti "" lc rgb "#8B0000",\
	#"" u 7 ti "" lc rgb "#8B0000",\
#
