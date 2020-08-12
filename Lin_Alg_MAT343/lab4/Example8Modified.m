clf 
S=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1]; %  square in homogeneous coordinates 

M1 = [1,0,0.4;0,1,0;0,0,1]; %  first translation matrix 
M2 = [1,0,0;0,1,0.4;0,0,1]; %  the second translation matrix 
M3 = [1 0 -0.4; 0 1 -0.4; 0 0 1]; 

p = plot(S(1,:),S(2,:)); % plot the original square  
axis square, axis([-1,18,-1,18]), grid on 

for i = 1:40
   S = M1*S; % compute the translated square 
   set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
   pause(0.05) 
end 

for i = 1:40
   S=M2*S; % compute the translated square 
   set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
   pause(0.05) 
end

for i = 1:40
   S = M3*S; % compute the translated square 
   set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
   pause(0.05) 
end 