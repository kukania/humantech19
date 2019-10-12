set terminal postscript color dashed enhanced 'Times-Roman'
set output 'latency_tail.eps'

set title "Samsung Block-SSD Read Tail Latency (Sync)"
set xlabel 'Time (micro sec)'
set ylabel 'CDF'
set xrange [0:500]
set yrange [0.95:1]
set ytics 0.01
set zeroaxis
set grid
#set key outside
set key right bottom
set size 1,1

set datafile separator ","

plot "./data/blkssd/randread/1G.csv" u 2:($1*0.01) ti "1GB" with lines, \
	"./data/blkssd/randread/2G.csv" u 2:($1*0.01) ti "2GB" with lines, \
	"./data/blkssd/randread/4G.csv" u 2:($1*0.01) ti "4GB" with lines, \
	"./data/blkssd/randread/8G.csv" u 2:($1*0.01) ti "8GB" with lines, \
	"./data/blkssd/randread/16G.csv" u 2:($1*0.01) ti "16GB" with lines, \
	"./data/blkssd/randread/32G.csv" u 2:($1*0.01) ti "32GB" with lines, \
	"./data/blkssd/randread/64G.csv" u 2:($1*0.01) ti "64GB" with lines, \
	"./data/blkssd/randread/128G.csv" u 2:($1*0.01) ti "128GB" with lines, \
	"./data/blkssd/randread/256G.csv" u 2:($1*0.01) ti "256GB" with lines, \
	"./data/blkssd/randread/512G.csv" u 2:($1*0.01) ti "512GB" with lines, \
	"./data/blkssd/randread/1T.csv" u 2:($1*0.01) ti "1TB" with lines, \

