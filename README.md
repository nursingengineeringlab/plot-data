# plot-data

# ab commands


### GET
```
ab -A test:test -g ~/old.csv -n 1000 -c 50 http://127.0.0.1:8002/seniors/

ab -A test:test -g ~/new.csv -n 1000 -c 50 http://127.0.0.1:30007/seniors/
```

### POST

```
ab -A test:test -T 'application/json' -g ~/old.csv -n 1000 -c 50 -p post.data 

ab -A test:test -T 'application/json' -g ~/new.csv -n 1000 -c 50 -p post.data 

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
