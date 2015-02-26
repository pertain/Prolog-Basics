% map.pl
%
% Assignment 7
% map.pl is the second file in assignment 7. It is a
% program written in prolog, and its purpose is to help us
% learn the basic syntax and functionality of the language.


% Part 3 - Graph Coloring

different(red,green).
different(red,yellow).
different(red,blue).
different(green,red).
different(green,yellow).
different(green,blue).
different(yellow,red).
different(yellow,green).
different(yellow,blue).
different(blue,red).
different(blue,green).
different(blue,yellow).

coloring(A,B,C,D,E,F) :-
	different(A,B),
	different(A,C),
	different(A,D),
	different(B,A),
	different(B,C),
	different(B,F),
	different(C,A),
	different(C,B),
	different(C,D),
	different(C,E),
	different(C,F),
	different(D,A),
	different(D,C),
	different(D,E),
	different(E,C),
	different(E,D),
	different(E,F),
	different(F,B),
	different(F,C),
	different(F,E).
