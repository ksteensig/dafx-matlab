% time series x will be delayed by d amount of samples
function [y] = delay_effect(x, d)
    y = zeros(1, d+1+length(x));
    y((d+1:length(x)+d)) = x;
end