x =0:.01:3;

y1 = f(x,10); 
y2 = f(x,15); 
y3 = f(x,25); 

plot (x,y1,'r-', x, y2, '-.k', x,y3, '--b', 'Linewidth',2); 
axis ([0 ,5 , -10 ,20]); 
grid on; 
title ("Solutions to $$\frac{dy}{dx} = 17x - 14x^2 - 7cos(x)$$",'interpreter','latex',"FontSize",15,"Color",'k'); 
legend ('C1 = 10', 'C2 = 15', 'C3 = 25') 
xlabel ('x'); ylabel ('y'); 
% -------------------------------
function y= f(x,C) 
y=(17/2).*x.^2 - (14/3).*x.^3 - 7.*sin(x) + C; 
end
