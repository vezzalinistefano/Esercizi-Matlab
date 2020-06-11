clear all
close all

m = input('Inserire numero intero: ');
v = ones(m,1);

C = zeros(m);
C([1 m],:) = 1;
C(: , [1 m]) = 1;

B = randn(m);
B
B([1 2],:) = B([2 1], :);
B