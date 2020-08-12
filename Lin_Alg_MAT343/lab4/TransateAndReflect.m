clf 
S=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1];    % square in homogeneous coordinates 
M=[1,0,2;0,1,-1;0,0,1];     % translation matrix 
R=[0 1 0; 1 0 0; 0 0 1]; % reflection across 45 degrees 

MS=M*S;    
plot(MS(1,:),MS(2,:),'k','linewidth',2); 
hold on 

RS=R*MS;     
plot(RS(1,:),RS(2,:),'r','linewidth',2); 

plot([-2,4],[-2,4]); 
legend('translated square','reflected square','line y = x','location','southwest');   
axis equal, axis([-2,4,-2,4]), grid on    % adjust the axis 
hold off