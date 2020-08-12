t0 = 0;
tf = 40; 
y0_v0_w0 = [-.5;.5;0];
[t,Y] = ode45(@f,[t0,tf],y0_v0_w0);
y=Y(:,1); v=Y(:,2); w=Y(:,3);    % y in output has 2 columns corresponding to u1 and u2

figure(1);
plot(t,y,'b',t,v,'r',t,w,'k','Linewidth',2); 
ylabel('y, v = y''')
xlabel('t');
legend('y(t)','v(t)','w(t)') 
ylim([-1.9,1.9]);
xlim([0,40]); 
grid on;

figure(2)
plot3(y,v,w,'Linewidth',2); 
axis square; 
view([-40,60])
xlabel('y'); 
ylabel('v=y'''); 
zlabel('w=y''''');
ylim([-1.9,1.9]);
xlim([-1.9,1.9]);  
grid on;
 %----------------------------------------------------------------------
 
function dYdt= f(t,Y)
y=Y(1); v=Y(2); w=Y(3); 
dYdt = [v; w; -5*cos(t)-7*(y^2)*w-14*y*v^2-6*v];
end
