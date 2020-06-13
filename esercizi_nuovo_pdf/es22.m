clear all
close all

type = ['-', ':', '-.', '--'];
i = 1;
hold on;
for n = 0:3 
    fplot(fun8(n), type(i));
    i = i+1;
end
xlabel('x');
ylabel('y');
legend('n = 0', 'n = 1', 'n = 2', 'n = 3');
hold off;