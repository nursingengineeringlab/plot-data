# output as png image
set terminal png

# save file to "benchmark.png"
set output "25.png"

# graph title
#set title "WebSocket real-time HealthData response time"

#nicer aspect ratio for image size
#set size 1,0.7
set terminal png size 600

set style line 1 lc 3  linetype 7 pointinterval 10
set style line 2 lc 2  linetype 8 pointinterval 10

# y-axis grid
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

plot "25new" title "new" smooth sbezier  with lp ls 1, "25old" title "old" smooth sbezier  with lp ls 2


