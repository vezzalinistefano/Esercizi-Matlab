clear all 
close all

x = linspace(-2,2,100);
k = 3;
y = fun6(x,k);
a1=[-1,1];
a2=[1,1];

hold on
plot(x,y);
plot(a1,'r*');
plot(a2,'r*');
title('Esercizio 18');
xlabel('x');
ylabel('y');
hold off;