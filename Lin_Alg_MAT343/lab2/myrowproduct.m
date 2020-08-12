function y = myrowproduct (A,x)

% The command myproduct (A,x) computes the product
% of the matrix A and the vector x by row .

[m,n] = size (A); % [m=2, n=7] 
[p,q] = size (x); % [p=7, q=1] 
    if (q ==1 && p==n) % passes the check above 
        y = zeros (m ,1); % y = zeros(2,1)
        for i = 1:m % i from 1 to 7
            y(i) = y(i) + A(i,:)*x; % y + x(1) * A(1,all columns) 
        end
    else
        disp (' dimensions do not match ')
    y = [];
    end
end