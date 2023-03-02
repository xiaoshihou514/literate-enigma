fib(1, 1).
fib(1, 2).
fib(Res, I) :- 
    I1 is I-1,
    I2 is I-2,
    fib(A, I1),
    fib(B,I2),
    Res is A+B.
