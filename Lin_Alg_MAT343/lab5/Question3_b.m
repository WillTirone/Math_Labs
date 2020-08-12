
m = [1:1:12]'; 
Y = [4.9; 5.5; 6.5; 7.1; 7; 6.8; 6.2; 6; 6.4; 6; 5.3; 4.8;];

X = [ones(size(m))]; 

a = []; 
for i = 1:5 
    a(:,i) = m(:,1).^i;
end

X_fifth = [X, a]; 

c = X_fifth\Y
c = c ([6: -1:1]) ;
q = 1:0.1:12;
z = polyval (c,q);
figure
plot (q,z,m,Y,'o');
axis tight