clear all;
close all;

A = [2 -1 0; 0 -2 1];
B = [4 1 0; 0 1 4];
b = [6; 0];
u = [4; 9; 3];

C = A * B'
v = C * b
D = A.*B
x = sort(A(1,:))
P = A.^4
v2 = [1;7;3]
u./v2
T = triu(B)