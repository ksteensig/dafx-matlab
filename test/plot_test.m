function [] = plot_test()
    fs = 44100;
    f = 25;
    
    syms n;

    % flanger plot
    
    [x, Fs] = audioread('Downloads/clean.ogg');

    %x = sin(200*2*pi*(0:1/fs:1));
    m = 300 - floor(300*cos(10*2*pi*(0:1/fs:7)));
    %m2 = 801 - floor(800*sin(0.4*2*pi*(0:1/fs:7)));

    %plot(m);
    y = flanger_effect(x, length(x), 1, 0.5, m);
    %y2 = flanger_effect(x(:,2), length(x), 0.5, 0.5, m2);
   
    
    sound(y,fs)
    
    %audiowrite('wtfdidijustdo.ogg',y,fs)
    %hold on;
    %plot(x)
    plot(y)
end