# spin-threads

http://spinroot.com/

## Check

```
spin -run threads.pml
```

### Output
```
Depth=      65 States=    1e+06 Transitions= 2.37e+06 Memory=   196.796	t=     0.52 R=   2e+06
Depth=      65 States=    2e+06 Transitions= 4.92e+06 Memory=   265.155	t=      1.1 R=   2e+06
pan:1: assertion violated (shared>2) (at depth 63)
pan: wrote threads.pml.trail

(Spin Version 6.4.5 -- 1 January 2016)
Warning: Search not completed
	+ Partial Order Reduction

Full statespace search for:
	never claim         	- (none specified)
	assertion violations	+
	cycle checks       	- (disabled by -DSAFETY)
	invalid end states	+

State-vector 68 byte, depth reached 65, errors: 1
  2626166 states, stored
  3947242 states, matched
  6573408 transitions (= stored+matched)
        2 atomic steps
hash conflicts:    199842 (resolved)

Stats on memory usage (in Megabytes):
  240.433	equivalent memory usage for states (stored*(State-vector + overhead))
  179.640	actual memory usage for states (compression: 74.72%)
         	state-vector as stored = 44 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
    0.534	memory used for DFS stack (-m10000)
  308.026	total actual memory usage



pan: elapsed time 1.49 seconds
pan: rate 1762527.5 states/second
```

## Trace
```
spin -tc threads.pml
```

## Output
```
                  read shared 0
              read shared 0
                  write shared = 1
                  read shared 1
                  write shared = 2
                  read shared 2
                  write shared = 3
                  read shared 3
                  write shared = 4
                  read shared 4
                  write shared = 5
          read shared 5
          write shared = 6
          read shared 6
          write shared = 7
          read shared 7
          write shared = 8
          read shared 8
          write shared = 9
              write shared = 1
              read shared 1
          read shared 1
              write shared = 2
              read shared 2
              write shared = 3
              read shared 3
              write shared = 4
              read shared 4
              write shared = 5
          write shared = 2
spin: threads.pml:34, Error: assertion violated
spin: text of failed assertion: assert((shared>2))
spin: trail ends after 64 steps
#processes: 1
		shared = 2
		N = 5
 64:	proc  0 (:init::1) threads.pml:35 (state 11) <valid end state>
4 processes created
```
