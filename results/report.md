# Report
## Assignment 1: Deploy all environments
I deployed all required environments and they returned equal results for a given input vector. These results can be seen here: [`results/assignment-1-endpoints.txt`](assignment-1-endpoints.txt).

## Assignment 2: Scenario A — Cold Start Characterization

## Assignment 3: Scenario B — Warm Steady-State Throughput

|Environment |Concurrency|p50 (ms)|p95 (ms)|p99 (ms)| Server avg (ms)|
|-----------|-----------|--------|--------|------|-|
|Lambda (zip)| 5 | 15.88 | 21.97 | 63.19 | - |
|Lambda (zip)| 10| 11.46 | 18.11 | 67.09 |-|
|Lambda (container)| 5 | 14.13 | 20.47 | 64.48 | -|
|Lambda (container)| 10| 11.07 | 18.39 | 66.34 |-|
|Fargate| 10 | 791.3 | 1049.4 | 1407.8 | -|
|Fargate| 50 | 3898.5 | 4189.2 | 4215.9 |-|
|EC2| 10 | 192.23 | 252.81 | 274.74 |-|
|EC2| 50 | 891.7 | 955.2 | 1058.2 | 1128.5 |-|


## Assignment 4: Scenario C — Burst from Zero

## Assignment 5: Cost at Zero Load

## Assignment 6: Cost Model, Break-Even, and Recommendation
