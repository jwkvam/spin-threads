int shared;
int N;

proctype A()
{
    int counter;
    int tmp;
    counter = 0;
    do
    :: (counter < N) ->
        atomic {
            tmp = shared;
            printf("read shared %d\n", shared);
        }
        atomic {
            shared = tmp + 1;
            printf("write shared = %d\n", shared);
            counter++
        }
    :: else -> break
    od
    assert counter == N
}

init {
    N = 5;
    shared = 0;
    atomic {
        run A(); run A(); run A()
    }
    if
    :: (_nr_pr == 1)
    fi
    assert shared > 2
}
