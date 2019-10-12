set terminal postscript color dashed enhanced font 'Helvetica,14' linewidth 1
set output 'blkssd_rr_throughput.eps'
set size 0.8,0.8

set style data histograms
set style histogram cluster gap 1
set style fill solid border -1
set xlabel "Working-set size" offset 0
set ylabel "KIOPS" offset 1.5
set ytics 20
set yrange [0:120]
set grid
set key top right samplen 1 maxrows 2
set title 'Block-SSD RandRead Throughput (4KB, QD32)'

set xtics font ",12"
set xtics nomirror rotate by -45

set datafile separator ","
plot "blkssd_throughput.csv" using 2:xtic(1) ti "Read" fs solid 1,\

