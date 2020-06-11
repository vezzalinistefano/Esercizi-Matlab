clear all
close all

m = input('Inserire m: \n');
A = randn(m);
aus = A(1,:);
A
A(1,:) = A(2,:);
A(2,:) = aus;
A
