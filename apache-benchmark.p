# output as png image
set terminal png

# save file to "benchmark.png"
set output "get.png"

# graph title
set title "ab -A test:test -n 1000 -c 50"

#nicer aspect ratio for image size
#set size 1,0.7
set terminal png size 600

# y-axis grid
set grid y

#x-axis label
set xlabel "GET request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot "old.csv" using 9 lc 2 smooth sbezier with lines title "old", "new.csv" using 9 lc 3 smooth sbezier with lines title "new"

