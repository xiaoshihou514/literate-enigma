## Find:
- Some implementations of a Fibonacci series and factorials. How do they work?
    - ./fib.pl, I1 and I2 declarations seem to be a must
- A real-world community using Prolog. What problems are they solving with it today?
    - That's a bit too hard considered my web searching skills, I found some projects using it to solve mini games
- An implementation of the Towers of Hanoi. How does it work?
```prolog
% https://github.com/dvberkel/prolog-hanoi/blob/master/generalized.pl
% This tower of hanoi impl is perculier
% Read the comments
% 1. Move top m disks on a free pole, other than the target pole.
% 2. Transfer the remaining n-m disks to the target pole without using the pole which holds the top m disks.
% 3. Move top 'm' disks from it's pole to the target pole
% where the optimal m is conjectured to be m=n-ceil(sqrt(2*n + 1)) + 1.

move(1, A, _, Z, [[A, Z]]).
move(N, A, [H|T], Z, P) :-
    M1 is (N - floor(sqrt(2*N + 1)) + 1),
    M2 is (N - M1),
    move(M1, A, [Z|T], H, P1),
    move(M2, A, T    , Z, P2),
    move(M1, H, [A|T], Z, P3),
    append(P1, P2, Q),
    append(Q, P3, P).

% ?- move(3, a, b, c, P).
% P = [[a, c], [a, b], [c, b], [a, c], [b, a], [b, c], [a, c]] .
```
- What are some of the problems of dealing with “not” expressions?
    - I dont know, but here's an introduction of the not expression
    - https://www.educba.com/prolog-not/
- Why do you have to be careful with negation in Prolog?
    - An answer from U of Sydney
    - https://www.cse.unsw.edu.au/~billw/dictionaries/prolog/negation.html

## Do:
- Reverse the elements of a list.
    - ./list.pl rev
- Find the smallest element of a list.
    - ./list.pl min
- Sort the elements of a list.
    - ./list.pl sort
