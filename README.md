# plot-data

# ab commands

```
ab -A user:password -g output.csv -n 100 -c 25 http://127.0.0.1:8002/seniors/
```

# gnuplot commands history

```
plot "plot1.csv" title "test" linetype 5 lc 3 w lines title "test"
plot "200new" title "new" linetype 5 lc 3 w lines, plot "200old" title "old" linetype 5 lc 2 w lines
plot "25new" title "new" linetype 5 lc 3 , "25old" title "old" linetype 5 lc 2


set xlabel"petitions" 
set ylabel"response time (ms)"
plot"old.csv"using 9 smooth sbezier with lines title "RESTful GET 127.0.0.1/seniors"
plot"old.csv"using 9 smooth sbezier with lines title "old: RESTful GET 127.0.0.1/seniors"
plot"old.csv"using 9 smooth sbezier with lines title "old: GET 127.0.0.1/seniors"
```

# parse file awk

```
cat 25new.log |grep "app_main.js:102" |awk -F ' ' '{print $5}' > 25new
```
