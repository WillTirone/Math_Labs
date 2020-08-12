function y=Exercise5(x)
    if x==8
        disp ('the function is undefined at x = 8')
    elseif x <= 2
        y=exp(x-8); 
    elseif (2 < x)&&(x<=4)
        y = 3*x + 1;
    else 
        y = x / (x - 8); 
    end
end
