%QUESTION 1
% Base case: X is the head of the list, so X is an element of the list.
element_of(X, [X | _]).

% Recursive case: X is an element of the tail if X is not the head.
element_of(X, [_ | Tail]) :-
    element_of(X, Tail).

%QUESTION 2
first(E, [E | _]).


%QUESTION 3
% Base case: the last element of a single-element list is that element itself.
last([X], X).

% Recursive case: move down the list by calling last on the tail.
last([_ | Tail], X) :-
    last(Tail, X).

%QUESTION 4
% Base case: the penultimate element of a list with only two elements is the first element.
penultimate([X, _], X).

% Recursive case: move down the list by calling penultimate on the tail.
penultimate([_| Tail], X) :-
    penultimate([Tail], X).

%QUESTION 5
% Base case: if K is 1, we remove the head of the list.
del_k(X, [X|Tail], 1, Tail).

% Recursive case: decrement K and traverse the list to find the Kth element.
del_k(X, [Head|Tail], K, [Head|NewTail]) :-
    K > 1,
    K1 is K - 1,
    del_k(X, Tail, K1, NewTail).