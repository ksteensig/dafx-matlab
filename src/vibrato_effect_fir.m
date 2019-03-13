function [y] = vibrato_effect_fir(x, dl, m)
    y = zeros(1, length(x));
    for j = 1:length(x)
        y(j) = dl * x(j - m(j));
    end
end