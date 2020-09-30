% Interpolates complex functions using the fast fourier transform scheme.
% 
%% Start
    clc; clear;

%% The Func to interp 
    dx = 3*pi/30;
    x = 0:dx:3*pi;
    f = sin(x).^2 .* cos(x);
    plot(x,f,'o')

%% Use FFT to do the interpolations: 
    N = 200;
    y = interpft(f,N);
    
%%  Interp
    dy = dx*length(x)/N;
    x2 = 0:dy:3*pi;
    y = y(1:length(x2));

%% Plotting the Results: 
    hold on
    plot(x2,y,'.')
    title('FFT Interpolation of Periodic Function')
    
    
