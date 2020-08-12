%apply the shear and then rotate 

clf 
S=[0,1,1,0,0;0,0,1,1,0]; 
plot(S(1,:),S(2,:),'linewidth',2) 
hold on 

theta = pi / 6;
Q=[ cos( theta ),-sin( theta ); sin( theta ),cos( theta )];
T =[1 ,4;0 ,1]; %shear matrix

QTS=Q*T*S; 
plot(QTS(1,:),QTS(2,:),'-r','linewidth',2); 

title('Example of horizontal shear and rotate') 
legend('original square','sheared square','location','southeast') 
axis equal,axis([-1,4,-1,4]); grid on   
hold off