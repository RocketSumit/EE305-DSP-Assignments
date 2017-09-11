function Y = Shift(X, k)
    %This function shift the sequence X by k samples

    %check if X is 2*2 matrix
    [m n] = size(X);
    if(m != 2 || n!= 2)
        disp('Error: The matrix dimensions are not correct');
        Y = NULL;
    end

    Y = [X(:,1)  X(:,2) + k];

    end