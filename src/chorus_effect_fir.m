function [y] = chorus_effect_iir(x, ff, dl, m1, m2, m3)
    y = zeros(1, length(x)*2);
    x(length(x)+1:length(x)*2) = zeros(1, length(x));
    for j = 1:length(x)
        y(j) = ff * x(j) + dl * (y(j - m1(j)) + y(j - m2(j)) + y(j - m3(j)));
    end
end