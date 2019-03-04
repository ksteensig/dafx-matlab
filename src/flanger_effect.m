function [y] = flanger_effect(x, n, ff, dl, m)
    y = zeros(1, n);
    for j = 1:n
        y(j) = ff * x(j) + dl * x(j - m(j));
    end
end