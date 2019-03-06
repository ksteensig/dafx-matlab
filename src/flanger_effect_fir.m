function [y] = flanger_effect_fir(x, ff, dl, m)
    y = zeros(1, length(x)*2);
    for j = 1:length(x)
        y(j) = ff * x(j) + dl * x(j - m(j));
    end
end