fib := method(j,
    if(j==1 or j==2, return 1,(
        a := 1
        b := 1
        i := 0
        for(i, 2, j-1, 1,(
            t := b
            b = a + b
            a = t
        ))
        return b
    ))
)

"Fibonacci using loops" println
fib(1) println // -> 1
fib(4) println // -> 3

fib = method(j,
    if(j == 1 or j == 2, return 1,(
        return fib(j-1) + fib(j-2)
    ))
)

"Fibonacci using recursion" println
fib(1) println // -> 1
fib(4) println // -> 3
