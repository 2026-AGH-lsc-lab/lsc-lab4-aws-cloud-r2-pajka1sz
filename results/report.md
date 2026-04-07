# Report
## Assignment 1: Deploy all environments
I deployed all required environments and they returned equal results for a given input vector. These results can be seen here: [`results/assignment-1-endpoints.txt`](assignment-1-endpoints.txt).

## Assignment 2: Scenario A — Cold Start Characterization

## Assignment 3: Scenario B — Warm Steady-State Throughput

|Environment |Concurrency|p50 (ms)|p95 (ms)|p99 (ms)| Server avg (ms)|
|-----------|-----------|--------|--------|------|-|
|Lambda (zip)| 5 | 14.66 | 22.33 |**66.93** | - |
|Lambda (zip)| 10| 11.75 | 18.28 |**65.77** |-|
|Lambda (container)| 5 | 15.41 | 23.25 |** 68.12** | -|
|Lambda (container)| 10| 11.37 | 21.41 |**68.80** |-|
|Fargate| 10 | 793.8 | 1007.0 | 1096.1 | 35.71|
|Fargate| 50 | 3894.6 | 4279.6 | 4405.2 |35.71|
|EC2| 10 | 194.22 | 254.04 | 283.29 |24.85|
|EC2| 50 | 898.5 | 1062.5 | 1167.0 |24.85|

Analysis:
* The cells annotated in bold are the ones where p99 $> 2*$ p95 which signals tail latency instability.
* Lambda's p50 doesn't change much when we use c=5 or c=10, because there is an isolated environment for each request.
* p50 increases hugely when changing Fargate and EC2 concurrencies, because requests have to wait for a single Fargate task or EC2 instance, as there is no auto-scaling.
* Client-side measures are much different than server-side because of TLS handshake time, network delays and long queues for Fargate and EC2.

## Assignment 4: Scenario C — Burst from Zero

## Assignment 5: Cost at Zero Load

## Assignment 6: Cost Model, Break-Even, and Recommendation
