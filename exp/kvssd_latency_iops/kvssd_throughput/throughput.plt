set terminal postscript color dashed enhanced font 'Helvetica,14' linewidth 1
set output 'kvssd_rw_throughput.eps'
set size 0.8,0.8

set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set xlabel "# of KV pairs (Total size)" offset 0
set ylabel "KIOPS (or MB/s)" offset 1.5
set ytics 20
set yrange [0:160]
set grid
set key top right samplen 1 maxrows 2
set title 'Samsung KV-SSD Read/Write Throughput (QD64)'

set xtics font ",12"
set xtics nomirror rotate by -45

set datafile separator ","
plot "throughput.csv" using 3:xtic(1) ti "Read" fs solid 1,\
	 "throughput.csv" using 2:xtic(1) ti "Write" fs solid 2,\

