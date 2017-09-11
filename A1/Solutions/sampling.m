function Y = sampling(X, A, k)
    %X is sampled up/down depending upon the string A and by a factor of k

    Y = [X(1, :)];
    if(A == 'D') %downsampling by factor of k
        i = 1 + k; 
        while( i <= (length(X(:,1))))
            Y = [Y; X(i, :)];
            i = i + k;
        end
    end
end