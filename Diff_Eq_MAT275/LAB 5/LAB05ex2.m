clear;     % clear all variables 
m = 9;  % mass [kg]
k = 16;  % spring constant [N/m]
c = 12;  % friction coefficient [Ns/m]
omega0 = sqrt(k/m); 
p = c/(2*m); 
y0 =0.8;  v0 = -0.3; % initial conditions

[t,Y] = ode45(@f,[0,15],[y0,v0],[],omega0, p); % solve for 0<t<15
y = Y(:,1); v = Y(:,2);% retrieve y, v from Y 

E = (1/2)*m*v.^2 + (1/2)*k*y.^2;

% figure(1); plot(t,y,'bo-',t,v,'r+-',t,E,'g');% time series for y and v 
% legend('y(t)','v(t) = y(t)')
% title 'C = 12'
% grid on; axis tight; 

figure(2); plot(v,y,'b','Linewidth',2)
title 'Phase Plot, v vs. y';
xlabel('v');
ylabel('y'); 
grid on; 

%---------------------------------------------------
function dYdt = f(t,Y,omega0,p) % function defining the DE 
y = Y(1); v = Y(2); 
dYdt=[v; (-2*p*v) - (omega0^2)*y];   % fill-in dv/dt
end