function [y] = echo_effect(x,ff,d,fb)
    y = zeros(1, length(x)*2);
    x(length(x)+1:length(x)*2) = zeros(1, length(x));
    
    for j = 1:length(x)
        if(d >= j)
            y(j) = ff * x(j);
            j
        else
            y(j) = ff * x(j) + fb * y(j - d);
            j
        end
     end
end
