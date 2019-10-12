set terminal postscript color dashed size 5,3 enhanced font 'Helvetica,14' linewidth 1
set output 'fig.eps'

set style data histograms
set style histogram cluster gap 2
set style fill solid border -1
set ylabel "Precentage (%)" offset 1.5,0
#set ylabel "Normaliszed traffic" offset 1.5,0
set yrange [0:]
set xtics font "Helvetica,12"
set ytics font "Helvetica,13"
set grid y
#set key box out horiz top
#set key left Left reverse samplen 1 maxrows 6
#set key width -13
set key samplen 1
set key font "Helvetica,11"

set datafile separator ","

set size 0.8,1.0

#set size 0.7,1
#plot "./data/compaction.csv" u ($2/$2):xtic(1) ti "LSM-KVD(5,0)" lc rgb "#D2B48C" ,\
#	"" u ($3/$2) ti "LSM-KVD(5,3)" lc rgb "#8B0000" ,\


plot "./data/compaction.csv" u 2:xtic(1) ti "LSM-KVD(5,0)" lc rgb "#D2B48C" ,\
	"" u 3 ti "LSM-KVD(5,3)" lc rgb "#8B0000" ,\
