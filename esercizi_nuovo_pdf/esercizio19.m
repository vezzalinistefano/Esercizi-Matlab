clear all 
close all

x = linspace(-1,1,100);

hold on;
subplot(2,2,1);plot(fun7(x,1),x);
subplot(2,2,2);plot(fun7(x,2),x);
subplot(2,2,3);plot(fun7(x,3),x);
subplot(2,2,4);plot(fun7(x,4),x);
hold off;