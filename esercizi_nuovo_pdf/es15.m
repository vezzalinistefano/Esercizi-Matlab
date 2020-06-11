clear all
close all

m = input('inserisci m: ');
x = linspace(0,1,100);

hold on;
for i=1:m
    f = x.^i;
    plot(f);
end
hold off;

