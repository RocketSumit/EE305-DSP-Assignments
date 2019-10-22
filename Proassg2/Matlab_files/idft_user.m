function y = idft_user(Xi,Ni)
%compute IDFT
xi = zeros(1, Ni);

%pad zeros if N > length of x[n]
if (Ni > length(Xi))
    Xi = [Xi zeros(1,Ni - length(Xi))];
end 

%start IDFT algorithm
for n2 = 0:Ni-1
    for k2 = 0:Ni-1
        xi(n2+1) = xi(n2+1) + Xi(k2+1)*exp(2*pi*1i*k2*n2/Ni);
    end
end
xi = xi/Ni;
y = xi;
end