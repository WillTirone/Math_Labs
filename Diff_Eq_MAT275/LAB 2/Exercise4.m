y = zeros(1,1000); 
k = 1; 
value = 1; 

tic 
while value < 10^4 
    
    % per MATLAB tool tip, initializing an array of zeros and replacing 
    % them with values is more efficient than concatenating arrays
    % repeatedly so I did that then resized at the end as needed 
    
    y(k) = value; 
    k = k+1;
    value = k^2; 
end 
y = nonzeros(y)' 
toc 
