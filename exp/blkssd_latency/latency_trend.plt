set terminal postscript color eps dashed enhanced font 'Helvetica,15' linewidth 1
set output 'latency_trend.eps'

#set title "Samsung Block-SSD Read Latency (Sync)"
set xlabel 'Time (microsecond)'
set ylabel 'CDF' offset 1
set xrange [0:600]
set yrange [0:1]
set ytics 0.2
set xtics 100
set zeroaxis
set grid
#set key outside
set key right bottom
set size 0.45,0.5

set datafile separator ","

plot "./data/blkssd/randread/1G.csv" u 2:($1*0.01) ti "1GB" with lines, \
	"./data/blkssd/randread/64G.csv" u 2:($1*0.01) ti "64GB" with lines, \
	"./data/blkssd/randread/128G.csv" u 2:($1*0.01) ti "128GB" with lines, \
	"./data/blkssd/randread/256G.csv" u 2:($1*0.01) ti "256GB" with lines, \
	"./data/blkssd/randread/512G.csv" u 2:($1*0.01) ti "512GB" with lines, \
	"./data/blkssd/randread/1T.csv" u 2:($1*0.01) ti "1TB" with lines, \
	"./data/blkssd/randread/2T.csv" u 2:($1*0.01) ti "2TB" with lines, \
	"./data/blkssd/randread/3T.csv" u 2:($1*0.01) ti "3TB" with lines, \


#plot "./data/blkssd/randread/1G.csv" u 2:($1*0.01) ti "1GB" with lines, \
	#"./data/blkssd/randread/2G.csv" u 2:($1*0.01) ti "2GB" with lines, \
	#"./data/blkssd/randread/4G.csv" u 2:($1*0.01) ti "4GB" with lines, \
	#"./data/blkssd/randread/8G.csv" u 2:($1*0.01) ti "8GB" with lines, \
	#"./data/blkssd/randread/16G.csv" u 2:($1*0.01) ti "16GB" with lines, \
	#"./data/blkssd/randread/32G.csv" u 2:($1*0.01) ti "32GB" with lines, \
	#"./data/blkssd/randread/64G.csv" u 2:($1*0.01) ti "64GB" with lines, \
	#"./data/blkssd/randread/128G.csv" u 2:($1*0.01) ti "128GB" with lines, \
	#"./data/blkssd/randread/256G.csv" u 2:($1*0.01) ti "256GB" with lines, \
	#"./data/blkssd/randread/512G.csv" u 2:($1*0.01) ti "512GB" with lines, \
	#"./data/blkssd/randread/1T.csv" u 2:($1*0.01) ti "1TB" with lines, \
###
