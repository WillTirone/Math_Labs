clf 
S=[0,1,1,0,0;0,0,1,1,0;1,1,1,1,1]; % square in homogeneous coordinates

M1 = [1,0,0.4;0,1,0;0,0,1]; % first translation matrix 
M2 = [1,0,-0.4;0,1,0;0,0,1]; % second translation matrix 

theta = pi/10;  % define the angle theta 
second_theta = -pi/10; 

Q=[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1]; % rotation matrix about (0,0)
QP=[1,0,17;0,1,0;0,0,1]*Q'*[1,0,-17;0,1,0;0,0,1];   % rotation matrix about (17,0)

second_Q = [cos(second_theta),-sin(second_theta),0;sin(second_theta),cos(second_theta),0;0,0,1];
second_QP = [1,0,1;0,1,0;0,0,1]*second_Q'*[1,0,-1;0,1,0;0,0,1]; 

p = plot(S(1,:),S(2,:)); % plot the original square
axis equal, axis([-0.5,19,-2,5]), grid on
for i = 1:40
    S = M1*S; % compute the translated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
    pause(0.05) 
end 
for i = 1:5
    S=QP*S; % compute the rotated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the rotated square 
    pause(0.05) 
end
for i = 1:40
    S = M2*S; % compute the translated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the translated square 
    pause(0.05) 
end 
for i = 1:5
    S=second_QP*S; % compute the rotated square 
    set(p,'xdata',S(1,:),'ydata',S(2,:)); % plot the rotated square 
    pause(0.05) 
end