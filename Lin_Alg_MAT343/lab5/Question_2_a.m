format short e 

t = [0; 5; 10 ;15; 20; 25];
y = [15; 15.7 ;18.7 ;20 ;21.9; 24.8];
Y = log(y);

X = [ones(size(t)),t]

z = X'*Y;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w

plot(t,Y,'o')   % plot the data points
q = t;    % define a vector for plotting the linear function
fit = c(1)+c(2)*q;  %define the linear fit 

hold on   
plot(q,fit,'Linewidth',2); 
axis tight 
hold off