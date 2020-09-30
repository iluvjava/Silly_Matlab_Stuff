%% start 
clear; clc;

%% Given poly, get coefficients
P = @(x) 4*x.^3 + 3*x.^2 + 2*x + 1;
Xs = NthUnity(5);
Ps = P(Xs);
ifft(Ps)

function Output = NthUnity(n)
    Points = 2*pi:-(2*pi)/n:(2*pi)/n;
    Output = exp(i*Points);
end

%% Given Coefficients, get Roots
% This is going to be hard. 