clear all
close all

d = .003;
x = (1-d:0.0001:1+d);
p = x.^6 - 6.*x.^5 +15.*x.^4 -20.*x.^3 +15.*x.^2 -6.*x +1;

plot(p, '-b', 'LineWidth', 1.5);