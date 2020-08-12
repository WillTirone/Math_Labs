format short e 
dat = load("gco2.dat");

x = dat(:,1);
y = dat(:,2);

X_lin = [ones(size(x)),x];
X_quad = [ones(size(x)),x,x(:,1).^2];

z_lin = X_lin'*y;                         % right hand side of the Normal Equations
S_lin = X_lin'*X_lin;                         % Left hand side of the Normal Equations
U_lin = chol(S_lin);                      % Cholesky decomposition
w_lin = U_lin'\z_lin;  %solve the normal equations using the Cholesky decomposition
c_lin = U_lin\w_lin

z = X_quad'*y;                         % right hand side of the Normal Equations
S = X_quad'*X_quad;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w

plot(x,y,'o')   % plot the data points
q = x;    % define a vector for plotting the linear function

lin_fit = c_lin(1)+c_lin(2)*q; 
quad_fit = c(1)+c(2)*q+c(3)*q.^2;  %define the linear fit 

hold on   

plot(q,quad_fit,'Linewidth',2);
plot(q,lin_fit,'b','Linewidth',2); 
legend('data points', 'quadratic fit', 'linear fit', 'location' ,'northwest')
axis tight 
hold off
