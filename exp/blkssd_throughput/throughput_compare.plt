set terminal postscript color eps dashed enhanced font 'Helvetica,15' linewidth 1
set output 'throughput_compare.eps'
set size 0.45,0.5

set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
#set xlabel "Working-set size" offset 0
set ylabel "KIOPS" offset 1
set ytics 20
set yrange [0:130]
set grid
unset key
#set key top right samplen 1 maxrows 3
#set title 'Samsung KV-SSD R/W Throughput w/ Block-SSD'

set xtics font ",12"
set xtics nomirror rotate by -45
set ytics font ",12"

set datafile separator ","
plot "kvssd_throughput.csv" using 3:xtic(1) ti "KV-SSD" fs solid 1, \
#	"blkssd_throughput.csv" using 2:xtic(1) ti "Block-SSD" fs solid 3,\

#plot "kvssd_throughput.csv" using 3:xtic(1) ti "KV-SSD Read" fs solid 1, \
	#"kvssd_throughput.csv" using 2:xtic(1) ti "KV-SSD Write" fs solid 2, \
	#"blkssd_throughput.csv" using 2:xtic(1) ti "Block-SSD Read" fs solid 3,\

