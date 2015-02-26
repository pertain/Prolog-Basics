% people.pl
%
% Assignment 7
% people.pl is the first file in assignment 7. It is a
% program written in prolog, and its purpose is to help us
% learn the basic syntax and functionality of the language.


% Part 2 - Facts and Inferences

person(mary,female).
person(joe,male).
person(alex,female).
person(carl,male).

married(mary,carl).
married(carl,mary).
employed(mary).
bio_major(joe).
watching_tv(joe).

% If a person is watching TV, then they are happy.
% If people are married, they are also happy,
% but not if they do not get sleep.
happy(X) :- watching_tv(X).
happy(X) :- married(X,_), \+(sleepless(X)).

% If a male and female are married, then they have children.
parent(X) :- married(X,Y), person(X,female), person(Y,male).
parent(X) :- married(X,Y), person(X,male), person(Y,Female).

% If a person is a biology major, has a job, or has children,
% then they are busy.
busy(X) :- bio_major(X).
busy(X) :- employed(X).
busy(X) :- parent(X).

% If a person is busy for two or more reasons,
% then they do not get any sleep.
sleepless(alex).
sleepless(X) :- bio_major(X), employed(X).
sleepless(X) :- bio_major(X), parent(X).
sleepless(X) :- employed(X), parent(X).
