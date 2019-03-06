function [y] = flanger_effect_iir(x, ff, dl, m)
    y = zeros(1, length(x)*2);
    x(length(x)+1:length(x)*2) = zeros(1, length(x));
    for j = 1:length(x)
        y(j) = ff * x(j) + ff * dl * y(j - m(j));
    end
end