function [C] = rowproduct(A,B)
% The command columnproduct (A,B) computes the product
% of the matrix A and the matrix B by column .

[m,n] = size(A); 
[p,q] = size(B); 
    if (p==n) 
        C = zeros (m ,q); 
        for i = 1:m
            C(i,:) = C(i,:) + A(i,:)*B;
        end
    else
    disp (' dimensions do not match ')
    C = [];
    end
end
