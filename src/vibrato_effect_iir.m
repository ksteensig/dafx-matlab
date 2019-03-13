function [y] = vibrato_effect_iir(x, dl, m)
    y = zeros(1, length(x));
    for j = 1:length(x)
        y(j) = dl * y(j - m(j));
    end
end