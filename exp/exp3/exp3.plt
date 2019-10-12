set terminal postscript color dashed size 6,3 enhanced font 'Helvetica,12' linewidth 1
set output 'exp3.eps'

set style data histograms
set style histogram clustered gap 2 title offset 0,-1.5 font ",11"

set style fill solid border -1
set ylabel "Throughput (KIOPS)" offset 1.5,0
set yrange [0:110]
set xtics font "Helvetica,12"
set ytics font "Helvetica,12"
set grid y
#set key left Left reverse samplen 1 maxrows 3
set key samplen 1 maxrows 4
set key font "Helvetica,10"
set key width -1.2

set datafile separator ","

n=1000

plot "./data/load.csv" u ($2/n):xtic(1) ti "Hash(8)   4%" lc rgb "#F0FFD0",\
	"./data/load.csv" u ($3/n):xtic(1) ti "Hash(8) 30%" lc rgb "#90EE90",\
	"./data/load.csv" u ($4/n):xtic(1) ti "Hash(8) 50%" lc rgb "#32CD32",\
	"./data/load.csv" u ($5/n):xtic(1) ti "Hash(8) 70%" lc rgb "#228B22",\
	"./data/load.csv" u ($6/n):xtic(1) ti "LSM-KVD(5,3)+   4%" lc rgb "#FFC5D1",\
	"./data/load.csv" u ($7/n):xtic(1) ti "LSM-KVD(5,3)+ 30%" lc rgb "#F08080",\
	"./data/load.csv" u ($8/n):xtic(1) ti "LSM-KVD(5,3)+ 50%" lc rgb "#DC143C",\
	"./data/load.csv" u ($9/n):xtic(1) ti "LSM-KVD(5,3)+ 70%" lc rgb "#8B0000",\

