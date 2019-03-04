function [y] = echo_effect(x, n, d, fb)
    y = zeros(1, n);
    if n > length(x)
        y(1:length(x)) = x(1:length(x));
    else
        y(1:n) = x(1:n);
    end
    xn = y;
    delay_buf = zeros(1, n+d);
    for j = 1:n
        y(j) = xn(j) + fb * delay_buf(j);
        delay_buf(j+d) = y(j);
    end
end
