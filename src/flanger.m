function [y] = flanger_effect(x, n, ff, dl, m)
    y = zeros(1, n);
    if n > length(x)
        y(1:n) = zeros(1,n);
        y(1:length(x)) = x(1:length(x));
    else
        y(1:n) = x(1:n);
    end
    
    delay_buf = zeros(1, n);
    for j = 1:n
        delay_buf(j*m(j)) = x(j);
        y(j) = ff * x(j) + dl * delay_buf(j);
    end
end