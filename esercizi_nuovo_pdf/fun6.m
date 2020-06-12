function y = fun6(x,k)

y = ones(1,length(x));

for i = 1:length(x)
    if(x(i) >= -1 && x(i) <= 1)
        y(i) = (abs(x(i)))^k;
    end
end



