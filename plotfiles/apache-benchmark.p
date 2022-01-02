# output as png image
set terminal png

# save file to "benchmark.png"
set output "get.png"

# graph title
set title "ab -A test:test -n 1000 -c 50"

#nicer aspect ratio for image size
#set size 1,0.7
set terminal png size 600

set style line 1 lc 3  linetype 7 pointinterval 5
set style line 2 lc 2  linetype 8 pointinterval 5

# y-axis grid
set grid y

#x-axis label
set xlabel "GET request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot "output.csv" using 9  smooth sbezier with lp ls 2 title "old", "new.csv" using 9 smooth sbezier with lp ls 1 title "new"

