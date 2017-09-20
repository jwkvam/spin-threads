int shared;
int N;

proctype A()
{
    int counter;
    int tmp;
    counter = 0;
    do
    :: (counter < N) -> tmp = shared; shared = tmp + 1; counter++; printf("shared = %d\n", shared)
    :: (counter < 0) -> assert(false)
    :: else -> break
    od
    assert counter == N
}

init {
    N = 10;
    shared = 0;
    atomic {
        run A(); run A()
    }
    do
    :: (_nr_pr == 1) -> break
    od
    assert shared > 2
}