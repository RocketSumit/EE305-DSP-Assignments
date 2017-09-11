function A = FlipDiscrete(B)
    
    [m n] = size(B);
    if(m != 2 || n != 2){
        disp('The matrix dimensions are not correct');
        exit;
    }
    else
    A = [B(:,1) (B(:,2)*-1)];
    end

end