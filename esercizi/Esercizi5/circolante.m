function C = circolante(v)

n = length(v);

for i = 1:n
    for j = 1:n
        if j >= i
            C(i,j) = v(n-(j-i));
        else
            C(i,j) = v(n-(i-j));
        end
    end
end


