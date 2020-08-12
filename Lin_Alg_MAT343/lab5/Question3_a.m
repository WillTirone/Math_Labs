format short e 
dat = load("gco2.dat");

%x = dat(:,1);
%y = dat(:,2);

m = [1:1:12]'; 
Y = [4.9; 5.5; 6.5; 7.1; 7; 6.8; 6.2; 6; 6.4; 6; 5.3; 4.8;];


%X = [ones(size(x)),x];             % build the matrix X for linear model
X = [ones(size(m))]; 

a = []; 
for i = 1:5 
    a(:,i) = m(:,1).^i;
end

X_fifth = [X, a]; 

z = X_fifth'*Y;                         % right hand side of the Normal Equations
S = X_fifth'*X_fifth;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w

plot(m,Y,'o')   % plot the data points
q = [1:0.1:12];    % define a vector for plotting the linear function
fit = c(1)+c(2)*q+c(3)*q.^2+c(4)*q.^3+c(5)*q.^4+c(6)*q.^5;  %define the linear fit 

hold on   
plot(q,fit,'Linewidth',2); 
axis tight 
hold off
