
t = [0; 5; 10 ;15; 20; 25];
y = [15; 15.7 ;18.7 ;20 ;21.9; 24.8];
Y = log(y); 

X = [ones(size(t)),t]; 

z = X'*Y;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w

plot(t,y,'o')   % plot the data points
q = [0:.1:35];    % define a vector for plotting the linear function
fit = exp(c(1))*exp(c(2)*q);  %define the linear fit 

hold on   
plot(q,fit,'Linewidth',2); 
hold off