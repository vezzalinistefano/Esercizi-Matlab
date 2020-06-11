clear all
close all

x = linspace(-1,1,100);

y = fun5(x);

y2 = fun5der(x);

hold on;
plot(y);
plot(y2);
hold off;