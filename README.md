# spin-threads

Check:

```
spin -run threads.pml
```

Output:
```
Depth=      95 States=    1e+06 Transitions= 2.11e+06 Memory=   196.796	t=     0.45 R=   2e+06
Depth=      95 States=    2e+06 Transitions= 4.37e+06 Memory=   265.155	t=     0.98 R=   2e+06
Depth=      95 States=    3e+06 Transitions= 6.66e+06 Memory=   333.612	t=     1.56 R=   2e+06
Depth=      95 States=    4e+06 Transitions= 8.99e+06 Memory=   402.069	t=     2.13 R=   2e+06
Depth=      95 States=    5e+06 Transitions= 1.13e+07 Memory=   470.526	t=      2.7 R=   2e+06
Depth=      95 States=    6e+06 Transitions= 1.36e+07 Memory=   539.081	t=     3.35 R=   2e+06
Depth=      95 States=    7e+06 Transitions=  1.6e+07 Memory=   607.636	t=     3.97 R=   2e+06
pan:1: assertion violated (shared>2) (at depth 93)
pan: wrote threads.pml.trail

(Spin Version 6.4.5 -- 1 January 2016)
Warning: Search not completed
	+ Partial Order Reduction

Full statespace search for:
	never claim         	- (none specified)
	assertion violations	+
	cycle checks       	- (disabled by -DSAFETY)
	invalid end states	+

State-vector 68 byte, depth reached 95, errors: 1
  7480209 states, stored
  9645747 states, matched
 17125956 transitions (= stored+matched)
        2 atomic steps
hash conflicts:   1490072 (resolved)

Stats on memory usage (in Megabytes):
  684.834	equivalent memory usage for states (stored*(State-vector + overhead))
  512.248	actual memory usage for states (compression: 74.80%)
         	state-vector as stored = 44 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
    0.534	memory used for DFS stack (-m10000)
  640.546	total actual memory usage



pan: elapsed time 4.31 seconds
pan: rate 1735547.3 states/second
```

Trace:

```
spin -tc threads.pml
```

Output:

```
                  shared = 1
                  shared = 2
                  shared = 3
                  shared = 4
                  shared = 5
          shared = 6
          shared = 7
          shared = 8
              shared = 1
          shared = 1
              shared = 2
              shared = 3
              shared = 4
              shared = 5
          shared = 2
spin: threads.pml:25, Error: assertion violated
spin: text of failed assertion: assert((shared>2))
spin: trail ends after 94 steps
#processes: 1
		shared = 2
		N = 5
 94:	proc  0 (:init::1) threads.pml:26 (state 13) <valid end state>
4 processes created
```
