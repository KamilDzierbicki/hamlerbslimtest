## About
Basic Rails 6 app to compare erb/slim/haml

## How to setup?
```
bundle
rails server >/dev/null 2>/dev/null
```

To get the numbers, use [AB (Apache Benchmark)](http://httpd.apache.org/docs/2.2/programs/ab.html)

```
ab -n 1000 -c 1 http://localhost:3000/erb
ab -n 1000 -c 1 http://localhost:3000/haml
ab -n 1000 -c 1 http://localhost:3000/slim
```

## Result
Seconds totals (for 8-cores-Intel-i9-2.4ghz 32GB-DDR4-2667MHZ):
```
erb: 7.593
slim: 7.570
haml: 7.815
haml using hamlit gem: 7.471
```
Differences are small (we should be focused on which one is faster to write, read and maintenance by devs)
### ERB
```
Document Path:          /erb
Document Length:        7518 bytes

Concurrency Level:      1
Time taken for tests:   7.593 seconds
Complete requests:      1000
Failed requests:        435
   (Connect: 0, Receive: 0, Length: 435, Exceptions: 0)
Total transferred:      9196340 bytes
HTML transferred:       7517296 bytes
Requests per second:    131.69 [#/sec] (mean)
Time per request:       7.593 [ms] (mean)
Time per request:       7.593 [ms] (mean, across all concurrent requests)
Transfer rate:          1182.71 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     6    7   1.1      7      31
Waiting:        6    7   1.1      7      31
Total:          6    8   1.1      7      31

Percentage of the requests served within a certain time (ms)
  50%      7
  66%      8
  75%      8
  80%      8
  90%      9
  95%      9
  98%     10
  99%     10
 100%     31 (longest request)
```
### Slim
```
Document Path:          /slim
Document Length:        6006 bytes

Concurrency Level:      1
Time taken for tests:   7.570 seconds
Complete requests:      1000
Failed requests:        739
   (Connect: 0, Receive: 0, Length: 739, Exceptions: 0)
Total transferred:      7685791 bytes
HTML transferred:       6006437 bytes
Requests per second:    132.10 [#/sec] (mean)
Time per request:       7.570 [ms] (mean)
Time per request:       7.570 [ms] (mean, across all concurrent requests)
Transfer rate:          991.46 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       2
Processing:     6    7   1.0      7      30
Waiting:        6    7   1.0      7      30
Total:          6    8   1.0      7      30

Percentage of the requests served within a certain time (ms)
  50%      7
  66%      8
  75%      8
  80%      8
  90%      8
  95%      9
  98%     10
  99%     10
 100%     30 (longest request)
```
### HAML using haml gem
```
Document Path:          /haml
Document Length:        6310 bytes

Concurrency Level:      1
Time taken for tests:   7.815 seconds
Complete requests:      1000
Failed requests:        554
   (Connect: 0, Receive: 0, Length: 554, Exceptions: 0)
Total transferred:      7988301 bytes
HTML transferred:       6309157 bytes
Requests per second:    127.96 [#/sec] (mean)
Time per request:       7.815 [ms] (mean)
Time per request:       7.815 [ms] (mean, across all concurrent requests)
Transfer rate:          998.19 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     6    8   1.4      7      38
Waiting:        6    8   1.4      7      38
Total:          6    8   1.4      8      38

Percentage of the requests served within a certain time (ms)
  50%      8
  66%      8
  75%      8
  80%      8
  90%      9
  95%      9
  98%     10
  99%     11
 100%     38 (longest request)
```
### HAML using hamlit gem
```
Document Path:          /haml
Document Length:        6310 bytes

Concurrency Level:      1
Time taken for tests:   7.471 seconds
Complete requests:      1000
Failed requests:        413
   (Connect: 0, Receive: 0, Length: 413, Exceptions: 0)
Total transferred:      7988685 bytes
HTML transferred:       6309435 bytes
Requests per second:    133.85 [#/sec] (mean)
Time per request:       7.471 [ms] (mean)
Time per request:       7.471 [ms] (mean, across all concurrent requests)
Transfer rate:          1044.22 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     6    7   0.8      7      18
Waiting:        6    7   0.8      7      18
Total:          6    7   0.8      7      18

Percentage of the requests served within a certain time (ms)
  50%      7
  66%      7
  75%      8
  80%      8
  90%      8
  95%      9
  98%      9
  99%     10
 100%     18 (longest request)
```

## Credits
Thx for https://github.com/scalp42/hamlerbslim