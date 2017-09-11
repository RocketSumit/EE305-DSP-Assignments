function F = FlipDiscrete(A)

%FlipDiscrete returns the the flipped version of discrete signal
    A = [A (A(:,2)*-1)]

endfunction