set terminal postscript color dashed enhanced 'Times-Roman'
set output 'kvssd_rlatency_tail.eps'

set title "Samsung KV-SSD Sync Read Tail Latency"
set xlabel 'Time (micro sec)'
set ylabel 'CDF'
set xrange [0:500]
set yrange [0.95:1]
set ytics 0.01
set zeroaxis
set grid
#set key outside
set key right bottom
set size 0.8,0.8

set datafile separator ","

plot	"./benchmark/1M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "1M KVs (1GB)" smooth csplines lw 3, \
	"./benchmark/4M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "4M KVs (4GB)" smooth csplines lw 3, \
	"./benchmark/16M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "16M KVs (16GB)" smooth csplines lw 3, \
	"./benchmark/64M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "64M KVs (64GB)" smooth csplines lw 3, \
	"./benchmark/128M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "128M KVs (128GB)" smooth csplines lw 3, \
	"./benchmark/256M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "256M KVs (256GB)" smooth csplines lw 3, \
	"./benchmark/512M/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "512M KVs (512GB)" smooth csplines lw 3, \
	"./benchmark/1G/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "1G KVs (1TB)" smooth csplines lw 3, \
	"./benchmark/2G/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "2G KVs (2TB)" smooth csplines lw 3, \
	"./benchmark/3G/sync_read/KVS-read_samples.csv" u 3:($1*0.01) ti "3G KVs (3TB)" smooth csplines lw 3, \

