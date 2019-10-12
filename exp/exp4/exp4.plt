set terminal postscript color dashed size 6,3 enhanced font 'Helvetica,14' linewidth 1
set output 'exp4.eps'

set multiplot layout 1,2 \
		margins 0.13,0.97,0.20,0.84

set style data histograms
set style histogram rowstacked
set style fill solid border -1
set ylabel "# of flash accesses" offset 2,0 font ",12"
set yrange [0:25000000]
set xtics font "Helvetica,7" offset 0,0.3 rotate by -45
set ytics font "Helvetica,10"
set ytics 10000000
set grid y
set key font "Helvetica,11"
set key samplen 1
set key tm left maxrows 2
set key width -3

set rmargin at screen 0.75
plot \
	newhistogram "A" offset 0,2.2 font ",12" ,\
	"./data/workloada.data" u 2:xtic(1) ti "Data read" lc rgb "#FFD700" ,\
	"" u 3 ti "Data write" lc rgb "#FF8C00" ,\
	"" u ($4-$6) ti "Mapping read" lc rgb "#4169E1" ,\
	"" u 5 ti "Mapping write" lc rgb "#00BFFF",\
	"" u 6 ti "Compaction read" lc rgb "#DC143C",\
	"" u 7 ti "Compaction write" lc rgb "#DDA0DD",\
	newhistogram "B" offset 0,2.2 font ",12" ,\
	"./data/workloadb.data" u 2:xtic(1) ti "" lc rgb "#FFD700" ,\
	"" u 3 ti "" lc rgb "#FF8C00" ,\
	"" u ($4-$6) ti "" lc rgb "#4169E1" ,\
	"" u 5 ti "" lc rgb "#00BFFF",\
	"" u 6 ti "" lc rgb "#DC143C",\
	"" u 7 ti "" lc rgb "#DDA0DD",\
	newhistogram "C" offset 0,2.2 font ",12" ,\
	"./data/workloadc.data" u 2:xtic(1) ti "" lc rgb "#FFD700" ,\
	"" u 3 ti "" lc rgb "#FF8C00" ,\
	"" u ($4-$6) ti "" lc rgb "#4169E1" ,\
	"" u 5 ti "" lc rgb "#00BFFF",\
	"" u 6 ti "" lc rgb "#DC143C",\
	"" u 7 ti "" lc rgb "#DDA0DD",\
	newhistogram "D" offset 0,2.2 font ",12" ,\
	"./data/workloadd.data" u 2:xtic(1) ti "" lc rgb "#FFD700" ,\
	"" u 3 ti "" lc rgb "#FF8C00" ,\
	"" u ($4-$6) ti "" lc rgb "#4169E1" ,\
	"" u 5 ti "" lc rgb "#00BFFF",\
	"" u 6 ti "" lc rgb "#DC143C",\
	"" u 7 ti "" lc rgb "#DDA0DD",\
	newhistogram "E" offset 0,2.2 font ",12" ,\
	"./data/workloade.data" u 2:xtic(1) ti "" lc rgb "#FFD700" ,\
	"" u 3 ti "" lc rgb "#FF8C00" ,\
	"" u ($4-$6) ti "" lc rgb "#4169E1" ,\
	"" u 5 ti "" lc rgb "#00BFFF",\
	"" u 6 ti "" lc rgb "#DC143C",\
	"" u 7 ti "" lc rgb "#DDA0DD",\
	newhistogram "F" offset 0,2.2 font ",12" ,\
	"./data/workloadf.data" u 2:xtic(1) ti "" lc rgb "#FFD700" ,\
	"" u 3 ti "" lc rgb "#FF8C00" ,\
	"" u ($4-$6) ti "" lc rgb "#4169E1" ,\
	"" u 5 ti "" lc rgb "#00BFFF",\
	"" u 6 ti "" lc rgb "#DC143C",\
	"" u 7 ti "" lc rgb "#DDA0DD",\

unset ylabel
set lmargin at screen 0.85
set ytics 10000000
set yrange [0:80000000]

plot \
	newhistogram "Load" offset 0,2.2 font ",12" ,\
	"./data/load.data" u 3 ti "" lc rgb "#FF8C00" ,\
	"" u 2:xtic(1) ti "" lc rgb "#FFD700" ,\
	"" u ($4-$6) ti "" lc rgb "#4169E1" ,\
	"" u 5 ti "" lc rgb "#00BFFF",\
	"" u 6 ti "" lc rgb "#DC143C",\
	"" u 7 ti "" lc rgb "#DDA0DD",\


