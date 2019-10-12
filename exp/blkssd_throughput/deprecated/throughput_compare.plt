set terminal postscript color dashed enhanced font 'Helvetica,14' linewidth 1
set output 'throughput_compare.eps'
set size 0.8,0.8

set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set xlabel "Working-set size" offset 0
set ylabel "KIOPS" offset 1.5
set ytics 20
set yrange [0:160]
set grid
set key top right samplen 1 maxrows 3
set title 'Samsung KV-SSD R/W Throughput w/ Block-SSD'

set xtics font ",12"
set xtics nomirror rotate by -45
set ytics font ",12"

set datafile separator ","
plot "kvssd_throughput.csv" using 3:xtic(1) ti "KV-SSD Read" fs solid 1, \
	"./data/kvssd_throughput.csv" using 2:xtic(1) ti "KV-SSD Write" fs solid 2, \
	"./data/blkssd_throughput.csv" using 2:xtic(1) ti "Block-SSD Read" fs solid 3,\

