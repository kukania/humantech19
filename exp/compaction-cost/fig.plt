set terminal postscript color eps dashed enhanced font 'Helvetica,12' linewidth 1
set output 'fig.eps'

set style data histograms
set style histogram rowstack gap 1
set boxwidth 0.5 relative
set style fill solid border -1
set size 0.5, 0.25

set ylabel "Compaction Time\n(sec)" offset 1
set ytics font ", 12"
set yrange [0:800]
set ytics 200

set xtics font ", 12"
#set xtics nomirror rotate by -45 

plot newhistogram, \
     'cost.dat' 		using 2:xtic(1) ti "I/O" 			fs pattern 3 lc rgb "#0072bd",\
     ''          		using 3         ti "Sorting"	fs pattern 3 lc rgb "#f89441",\
     ''          		using 4         ti "SW Overhead"	fs pattern 3 lc rgb "#ffff00",\

