format compact 
% MAT 343 MATLAB Assignment #1

%Question 1 

A = [-3 1 -2 
-1 1 3 
2 5 -4];

B = [.7 .9 .7
.7 3.9 3.6
3.1 2.0 3.5]; 

C = [3 0
4 6
3 0]

                                       % (i) 
A + C 
{Matrix dimensions must agree.}

% (ii) 
C*A 
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mtimes')" style="font-weight:bold"> * </a>
Incorrect dimensions for matrix multiplication. Check that the number of columns in the first matrix matches the number of rows in
the second matrix. To perform elementwise multiplication, use '.*'.} 

% (iii)
A + B 
ans =
   -2.3000    1.9000   -1.3000
   -0.3000    4.9000    6.6000
    5.1000    7.0000   -0.5000

% (iv) 
B + A 
ans =
   -2.3000    1.9000   -1.3000
   -0.3000    4.9000    6.6000
    5.1000    7.0000   -0.5000

% (v) 
A*B
ans =
   -7.6000   -2.8000   -5.5000
    9.3000    9.0000   13.4

% (vi) 
B*A 
ans =
   -1.6000    5.1000   -1.5000
    1.2000   22.6000   -4.1000
   -4.3000   22.6000  -14.2000

% (vii) 
4 + C
ans =
     7     4
     8    10
     7     4

% (viii)
A*C 
ans =
   -11     6
    10     6
    14    30

% (ix) 
4 * (A + B) 
ans =
   -9.2000    7.6000   -5.2000
   -1.2000   19.6000   26.4000
   20.4000   28.0000   -2.0000

% (x) 
4*A + 4*B 
ans =
   -9.2000    7.6000   -5.2000
   -1.2000   19.6000   26.4000
   20.4000   28.0000   -2.0000


% (a): both i and ii failed; for addition, in (i), the dimensions must be exactly the same but were 3x
% (a): both i and ii failed; for addition, in (i), the dimensions must be exactly the same but were 3x3 and 3x2; for (ii),
% the INNER dimensions must match; CA is 3x2 * 3x3 which doesn't work. 

% (b): yes, those are equivalent.

% (c): yes

% (d): 4+C adds the scalar 4 to every element within the matrix.

% (e): In general, no, AB =/= BA 

%Question 2 - Check some linear algebra rules: 

A = [6 9; -4 -6];
B = [-3 9; -2 6]; 
C = [3 6; 1 2];

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       % (i) - this rule is false 
(A*B)^2 == (A^2) * (B^2) 
ans =
  2x2
   0   0
   0   0

% (ii) - this is untrue because A(B+C) must be LEFT multiplied, not right multiplied as in this case 
A * (B+C) == ((B*A) + (C*A))
ans =
  2×2 
   0   0
   0   0
                                                                                                                                                                                             
% (iii) this is false when considering the below; true in algebra but not in matrix algebra
A^2 == zeros(2,2) 
ans =
  2×2 
   1   1
   1   1
A == zeros(2,2) 
ans =
  2×2 
   0   0
   0   0

                                                                                                                                              % (iv) This is NOT true. The correct expansion would be A^2 + AB + BA + B^2; AB and BA cannot be combined into 2AB as they 
% would be in regular algebra 
(A+B)^2 == A^2 + 2*A*B + B^2 
ans =
  2×2 <a href="matlab:helpPopup logical" style="font-weight:bold">logical</a> array
   0   0
   0   0
% However: 
(A+B)^2 == A^2 + A*B + B*A + B^2
ans =
  2×2 <a href="matlab:helpPopup logical" style="font-weight:bold">logical</a> array
   1   1
   1   1

% (v) - this is false when comparing the below results 
B * C == zeros(2,2)
ans =
  2×2 
   1   1
   1   1

                                                                                                                                                                                                                                                                                                                                                                                                                                                            
% (vi) - this will be true since they A is left multiplied 
A * (B + C) == A*B + A*C
ans =
  2×2 
   1   1
   1   1

%(vii) - this is false in a way similar to (iv);  the expansion works in regular algebra but here should be A^2 + AB - BA -B^2 
% since AB - BA does not equal zero 
(A-B) * (A + B) == A^2 - B^2 
ans =
  2×2 
   0   0
   0   0
                                                                                                                                                          
%Question 3 - The transpose of a matrix 

A = [-5 6; 5 6]; 
B = [2 -5; -5 4]; 
C = [-6 -5 4; 3 2 1]; 

% (i) 
                                        B' * A' 
ans =
   -40   -20
    49    -1

% (ii) 
C' * A 
ans =
    45   -18
    35   -
% (iii) 
(A')'
ans =
    -5     6
     5     6

% (iv) 
B' 
ans =
     2    -5
    -5     4

% (v)
A' * B' 
ans =
   -35    45
   -18    -6
 
% (vi) 
(A * B)' 
ans =
   -40   -20
    49    -1

% (vii) 
A * C'
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mtimes')" style="font-weight:bold"> * </a>
Incorrect dimensions for matrix multiplication. Check that the number of columns in the first matrix matches the number of rows in
the second matrix. To perform elementwise multiplication, use '.*'.} 

% 3a) the only problem that didn't work is (vii) because the resultant dimensions of C' do not work. This is trying to do 
% 2x2 * 3x2 which does not work. 

% 3b) b is symmetric; in (iv) we see that it's transpose is the same as it's normal matrix 

% 3c) (A')' is just the same thing as A, so they are equal. It's just undoing the transposition. 

% 3d) (AB)' =/= A'B' while (AB)' DOES equal B'A' by the property of tranposes. 

% Question 4 - Matrix multiplication 

                                                                                                                                                                                                                                                                                                       R = round(10*rand(3));
S = round(10*rand(3)); 

% (i)
[R*S(:,1), R*S(:,2), R*S(:,3)]
ans =
   191   141    79
    65    39    58
   170   124    78

% (ii)
[R(1,:)*S; R(2,:)*S; R(3,:)*S ]
ans =
   191   141    79
    65    39    58
   1

% (iii) - below is identical to (i) and (ii) 
R*S 
ans =
   191   141    79

% (iv) 
% (i) and (ii) above are simply constructing a new matrix by slicing to "manually" calculate each row by each column. 
% (i) is creating the new matrix by iterating through the columns of S, and (ii) is iterating through the rows of S. 

% Question 5 - Creating matrices with eye, ones, diag, and triu

v = [9 10 11];
M = diag(v) 
M =
     9     0     0
     0    10     0
     0     0    11

                     sevens = ones(3)  * 7;
N = triu(sevens) 
N =
     7     7     7
     0     7     7
     0     0     7

P = eye(3,3) * 2 
P =
     2     0     0
     0     2     0
     0     0     2

                                                                  
Q = ones(3,2)*8
Q =
     8     8
     8     8
     8     8

% Question 6 - create a big matrix with submatrices 

% (i) 
G = [[B; eye(2,2)], [eye(2,2); A], [C; zeros(2,3)]]

G =

     2    -5     1     0    -6    -5     4
    -5    -4     0     1     3     2     1
     1     0    -5     6     0     0     0
     0     1     5     6     0     0     0

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
% Question 7 - manipulate a matrix 

% 7a) 

H = G(1:3,2:4)

H =

    -5     1     0
    -4     0     1
     0    -5     6


% 7b) 
E = H;
E(1,3) = 5

E =

    -5     1     5
    -4     0     1
     0    -5     6

% 7c) 
                                                                F = H(:,2:3) 

F =

     1     0
     0     1
    -5     6

% 7d) - typing G(:,:) just returns G because it is slicing all rows and all columns 
% G(:), interestingly, returns the entire matrix as a column vector. Sort of a transpose + append of every single row. 

                                                                                                                                                                                                        % 7e) - G(5,1) WOULD return the number at the 5th row and 1st column
% but because that is out of range, it will give an error. G is 4x7
G(5,1) 

% 7f) - max(G) is giving the maximum value of each column; ssum(G) 

ans =

    -2     0     1    13    -3    -3     5

% 7g) I think G(G>3) will mask G and return elements greater than 3 within G
% G(G>3) = 500 is assigning the value 500 to each entry in G that is > 3. This is using a technique called masking. 

G(G>3) 

ans =

     4
     5
     6
     6
     4

G(G>3) = 500

G =

     2    -5     1     0    -6    -5   500
    -5   500

% Question 8 - Perform row operations 

A = [7 2 5; -21 -7 -11; 28 4 41];
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     A = [7 2 5; -21 -7 -11; 28 4 41];
A([1,3],:) = A([3,1],:)

A =

      28              4             41       
     -21             -7            -11       
       7              2              5       

A(2,:) = A(2,:) + (3/4) * A(1,:) 

A =

      28              4             41       
       0             -4             79/4     
       7              2              5       

A(3,:) = A(3,:) - (1/4)*A(1,:)

A =

      28              4             41       
       0             -4             79/4     
       0              1            -21/4     

A(3,:) = A(3,:) + (1/4) * A(2,:)

A =

      28              4             41       
       0             -4             79/4     
       0              0             -5/16    

