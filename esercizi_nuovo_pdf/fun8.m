function y = fun8(n)

syms x
y = piecewise(-2<=x<=-1, n.*x +1, -1 <=x<=0, n+1, 0<x<2, x.^n);




