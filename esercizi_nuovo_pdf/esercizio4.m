clear all
close all

n = input('Fornire un numero intero: ');

for i = 1 : n
    v(i) = 1/(2^(i-1));
end

A = v*v';

C = zeros(n);
C(1,:)= v;
C(n,:) = fliplr(v);
C(2:n-1,1)= v(2:n-1)';
C(2:n-1,n) = v(2:n-1)';