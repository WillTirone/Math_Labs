clf                               % clear all settings for the plot
S=[0,1,1,0,0;0,0,1,1,0];
theta =pi /8; % define the angle
Q=[cos( theta ), -sin( theta ); sin( theta ), cos( theta)];  
p = plot(S(1,:),S(2,:));          % plot the square
axis([-1,4,-1,4])                 % set size of the graph
axis square, grid on              % make the display square
hold on                           % hold the current graph
for i = 1:16
    S = Q*S;                               % dilate the square
    set(p,'xdata',S(1,:),'ydata',S(2,:));   % erase original figure and plot
                                            % the transformed figure
    pause(0.1)         % adjust this pause rate to suit your computer.
end

neg_Q=[cos(-theta ), -sin(-theta ); sin(-theta ), cos(-theta)];  

for i = 1:16
    S = neg_Q*S;                               % contract the square
    set(p,'xdata',S(1,:),'ydata',S(2,:));   % erase original figure and plot
                                            % the transformed figure
    pause(0.1)         % adjust this pause rate to suit your computer.
end
hold off 