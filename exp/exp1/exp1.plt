set terminal postscript color dashed size 6,2 enhanced font 'Helvetica,14' linewidth 1
set output 'exp1.eps'
#set multiplot layout 1,2
#set multiplot layout 1,7 \
#              margins 0.11,0.98,0.20,0.98 \
#              spacing 0.07,0.07

set style data histograms
set style histogram cluster gap 2
set style fill solid border -1
set ylabel "Throughput (KIOPS)" offset 1.5,0
set yrange [0:]
set xtics font "Helvetica,12"
set ytics font "Helvetica,13"
set grid y
#set key box out horiz top
set key left Left reverse samplen 1 maxrows 6
#set key width -13
set key font "Helvetica,11"

set datafile separator ","

#set size 0.7,1
plot "./data/iops.csv" u ($3/1000):xtic(1) ti "Hash" lc rgb "#FAFAD2" ,\
	"" u ($6/1000) ti "LSM-KVD" lc rgb "#D2691E",\
	"" u ($7/1000) ti "LSM-KVD+" lc rgb "#8B0000",\

#set lmargin at screen 0.75
#plot "./data/workloade.csv" u 2:xtic(1) notitle lc rgb "#FAFAD2" ,\
#	"" u 3 notitle lc rgb "#90EE90" ,\
#	"" u 4 notitle lc rgb "#228B22" ,\
#	"" u 5 notitle lc rgb "black" ,\
#	"" u 6 notitle lc rgb "#D2691E" ,\
#	"" u 7 notitle lc rgb "#8B0000" ,\

