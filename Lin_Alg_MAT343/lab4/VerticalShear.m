clf 
S=[0,1,1,0,0;0,0,1,1,0]; 
plot(S(1,:),S(2,:),'linewidth',2) 
hold on 
T=[1,0;2,1];   
TS=T*S; 
plot(TS(1,:),TS(2,:),'-r','linewidth',2); 
title('Example of vertical shear by 2 units') 
legend('original square','sheared square','location','southeast') 
axis equal,axis([-1,4,-1,4]); grid on   
hold off