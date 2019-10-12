set terminal postscript color dashed size 6,3 enhanced font 'Helvetica,15' linewidth 1
set output 'fig.eps'

set style data histograms
set style histogram rowstack gap 1
set style fill pattern border -1
set style line 2 lc rgb 'black' lt 1 lw 1
set xtics font "Helvetica, 15"
#set grid ytics
set yrange [0:60000000]
set ylabel"# of Page Writes (8 KB)" offset 0,0
#set ytics 5
set boxwidth 0.5 relative

set size 1.1,1.0
set key samplen 1.5
set key font "Helvetica,15"

#set xtics nomirror rotate by -20

set label "Hash(8)" at 0.00,32000000 center font ",13"
set label "LSM-KVD(5,3)" at 1.00,45000000 center font ",13"
set label "LSM-KVD(5,3)+OPT" at 2.00,29000000 center font ",13"

#set xtics font "Helvetica,12" offset 0,0.45
set noxtics

unset xlabel

plot newhistogram "",\
	'gc.data' using 2:xtic(1) ti "Data" fs pattern 3 lc rgb "blue",\
	'' using 3 ti "KV Pair" fs pattern 3 lc rgb "orange",\
	'' using 4 ti "Compaction" fs pattern 3 lc rgb "purple",\
	'' using 5 ti "KV Indices" fs pattern 3 lc rgb "green",\
