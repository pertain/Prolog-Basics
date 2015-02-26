% fib.pl
%
% Assignment 7
% fib.pl is the third file in assignment 7. It is a
% program written in prolog, and its purpose is to help us
% learn the basic syntax and functionality of the language.


% Part 4 - Recursion and Trees

% Prints all Fibonacci numbers up to N
fib(0,0).
fib(1,0) :- write('0').
fib(X,Y) :- X > 1, write('0 1 '), X > 0, fib(X-1,Y,_).

fib(1,1,0).
fib(X,Y1,Y2) :- X > 1,
				X1 is X - 1, fib(X1,Y2,Y3),
				Y1 is Y2 + Y3,
				write(Y1), write(' ').
