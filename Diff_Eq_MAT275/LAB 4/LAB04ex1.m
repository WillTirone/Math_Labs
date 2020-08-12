t0 = 0;
tf = 40; 
y0 = [-.5;.5];
[t,Y] = ode45(@f,[t0,tf],y0);
y = Y(:,1); v = Y(:,2);    % y in output has 2 columns corresponding to u1 and u2

figure(1);
plot(t,y,'b',t,v,'r','Linewidth',2); 
ylabel('y, v = y''')
xlabel('t');
legend('y(t)','v(t)') 
ylim([-1.9,1.9]);
xlim([0,40]); 
grid on;

figure(2)
plot(y,v,'Linewidth',2); axis square; xlabel('y'); ylabel('v=y''');  % plot the phase plot
ylim([-1.9,1.9]);
xlim([-1.9,1.9]);  
grid on;
 %----------------------------------------------------------------------
 
function dYdt= f(t,Y)
y=Y(1); v=Y(2);
dYdt = [v; -5*sin(t)-7*v-6*y];
end
