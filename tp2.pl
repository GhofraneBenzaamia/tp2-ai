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
