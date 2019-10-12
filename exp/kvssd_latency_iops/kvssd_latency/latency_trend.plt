set terminal postscript color eps dashed enhanced font 'Helvetica,15' linewidth 1
set output 'kvssd_rlatency_trend.eps'

#set title "Samsung KV-SSD Sync Read Latency Trend"
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
#set size 0.45,0.55
set size 0.45,0.5

set datafile separator ","

plot	"./benchmark/1M/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "1GB" smooth csplines lw 3, \
	"./benchmark/64M/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "64GB" smooth csplines lw 3, \
	"./benchmark/128M/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "128GB" smooth csplines lw 3, \
	"./benchmark/256M/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "256GB" smooth csplines lw 3, \
	"./benchmark/512M/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "512GB" smooth csplines lw 3, \
	"./benchmark/1G/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "1TB" smooth csplines lw 3, \
	"./benchmark/2G/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "2TB" smooth csplines lw 3, \
	"./benchmark/3G/sync_read/KVS-run.latency.csv" u 3:($1*0.01) ti "3TB" smooth csplines lw 3,
