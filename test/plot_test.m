function [] = plot_test()
    fs = 44100;
    f = 25;

    % flanger plot
    %[x, Fs] = audioread('clean.ogg');
    x = sin(40 * 2*pi*(0:1/fs:7));
    m1 = 220 - floor(220*cos(0.1*2*pi*(0:1/fs:15)));
    m2 = 220 - floor(220*cos(0.3*2*pi*(0:1/fs:15)));
    m3 = 220 - floor(220*cos(0.6*2*pi*(0:1/fs:15)));

    %plot(m);
    %y = flanger_effect(x, length(x), 0.5, 0.5, m);
    %sound(y,fs)
    %plot(y)
    
    % echo plot
    %x = [1 0.7 0 0 0 0 0 0 0 0 0 0 0 0];
    %y1 = flanger_effect_iir(x, 0.7, 0.7, m1);
    %y1 = flanger_effect_fir(x, 1, 0.3, m1);
    y1 = vibrato_effect_fir(repmat([1 0 0 0 0], 1000), 1, m2);
    
    %sound(y1, fs)
    plot(y1(1:length(y1)/2));
    xlabel('Samples')
    ylabel('Amplitude')
    %stem(0:length(x)-1, y);
end