function Y = sampling(X, A, k)
    %X is sampled up/down depending upon the string A and by a factor of k

    %check for error
    [m, n] = size(X);
    if(n != 2 )
        disp('Error: The dimenstions of matrix are not correct');
        Y = 'NULL';
    end

    if(A == 'D' || A == 'd') %downsampling by factor of k
        Y = [X(1, :)]; %copying first row as it is
        i = 1 + k; 
        while( i <= m)
            Y = [Y; X(i, :)];   %adding only kth rows
            i = i + k;
        end

    elseif(A == 'U' || A == 'u') %upsampling by factor of k
        Y = [X(1, :)]; %copying first row as it is
        j = 2; 
        Z = zeros(k - 1, 2);
         
        while( j <= m)
            Y = [Y; Z; X(j, :)]; %adding k-1 zeros between each rows
            j = j + 1;   
        end

        Y = [Y; Z];  % adding the last rows of zeros

    else 
        disp('Error in string parameter');
        Y = 'NULL';
    end
end
