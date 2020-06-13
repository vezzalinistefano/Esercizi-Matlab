clear all 
close all 


d = [0.1 0.01 0.008 0.007 0.005 0.003] ; 



for i = 1 : 6 
    x=[1-d(i):0.0001:1+d(i)]; 
    p = x.^6 - 6*x.^5 + 15*x.^4 - 20*x.^3 + 15*x.^2 - 6*x + 1 ; 
    subplot(2,3,i) ; plot(p, '-b', 'LineWidth', 1.5); 
    title(i)
end