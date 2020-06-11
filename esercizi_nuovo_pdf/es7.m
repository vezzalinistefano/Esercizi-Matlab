clear all
close all

x = [-2 -1 0 1 2];

res = fun1(x);
sol = sin(x);
err = abs(sol - res);

