%QUESTION 1
% Base case: X is the head of the list, so X is an element of the list.
element_of(X, [X | _]).

% Recursive case: X is an element of the tail if X is not the head.
element_of(X, [_ | Tail]) :-
    element_of(X, Tail).

%QUESTION 2
first(E, [E | _]).


