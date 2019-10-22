function y = dft_user(x1,N)
%computing N point DFT
X = zeros(1, N);
x1_length = length(x1);

%pad zeros if N > length of x[n]
if (N > x1_length)
    x1 = [x1 zeros(1,N - x1_length)];
end 

%start DFT algorithm
for k = 0:N - 1
    for n = 0:N-1
       X(k+1) = X(k+1) + x1(n+1)*exp(-2*pi*k*1i*n/N);
    end
end
y = X;
end

