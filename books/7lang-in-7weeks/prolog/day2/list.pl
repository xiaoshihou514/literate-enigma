% After working (aka fighting) with prolog for several hrs
% I decided to declare defeat
getTail([S], S).
getTail([_|Tail], T) :- 
    getTail(Tail, T).

removeTail([_], []).
removeTail([Head|Tail], R) :-
    removeTail(Tail, Newtail),
    R = [Head|Newtail].

setTail([_], V, [V]).
setTail([H|T], V, R) :-
    setTail(T, V, New),
    R = [H|New].

rev([S], [S]).
rev([], []).
rev([H1|T1], [H2|T2]) :-
    getTail(T1, H2),
    setTail(T2, H1, T2).

% Check out the impl of rev from the std swi prolog library
% https://www.swi-prolog.org/pldoc/man?predicate=reverse%2f2 (list-rev)
% wrapper
reverse(Xs, Ys) :-
  reverse(Xs, [], Ys, Ys).
% epmty case
reverse([], Ys, Ys, []).
% ???
reverse([X|Xs], Rs, Ys, [_|Bound]) :-
  reverse(Xs, [X|Rs], Ys, Bound).
% ChatGPT to the rescue
% For example, if we have the list [1, 2, 3, 4], the algorithm will reverse it as follows:
%     The wrapper predicate reverse([1, 2, 3, 4], Ys) calls the reverse/4 predicate with Xs = [1, 2, 3, 4], Rs = [], Ys = Ys, and Bound = Ys.
%     The recursive call reverse([2, 3, 4], [1], Ys, [Y1|Ys]) is made, where Y1 is the first element of Ys.
%     The recursive call reverse([3, 4], [2, 1], Ys, [Y2, Y1|Ys]) is made, where Y2 is the first element of Ys.
%     The recursive call reverse([4], [3, 2, 1], Ys, [Y3, Y2, Y1|Ys]) is made, where Y3 is the first element of Ys.
%     The base case reverse([], [4, 3, 2, 1], [4, 3, 2, 1], []) is reached, and the final reversed list [4, 3, 2, 1] is returned.
% As you can see, each element of the input list is added to the head of the "already reversed list" in reverse order, resulting in the reversed list [4, 3, 2, 1].

% Also the min algorithm from ChatGPT
smallest([X], X).
smallest([X|Xs], Min) :- smallest(Xs, Min1), Min is min(X, Min1).
% That's not too bad tbh
% I don't really wanna write some shitcode that uses prolog to emulate
% a common language to impl sort, so I figured I would find one online
% http://kti.ms.mff.cuni.cz/~bartak/prolog/sorting.html
% which explains quite a lot of stuff
