clear all;     % clear all variables 
m = 9;  % mass [kg]
k = 16;  % spring constant [N/m]
omega0 = sqrt(k/m); 
y0 =0.8;  v0 = -0.3; % initial conditions
[t,Y] = ode45(@f,[0,15],[y0,v0],[],omega0); % solve for 0<t<15
y = Y(:,1); v = Y(:,2);  % retrieve y, v from Y 

% E = (1/2) * m *v.^2 + (1/2)*k*y.^2;

figure(1); plot(t,y,'bo-',t,v,'r+-');% time series for y and v 
grid on; axis tight; 
ylim([-1.5,1.5])

% figure(2);
% plot(v,y,'Linewidth',2)
% xlabel('v')
% ylabel('y')
% grid on; 

%---------------------------------------------------
function dYdt = f(t,Y,omega0); % function defining the DE 
y = Y(1); v = Y(2); 
dYdt=[ v ; - omega0^2*y ];
end