function [ I ] = meidanPlot( T )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

space = linspace(-3*10^(-3), 10^(-3), 1000);
space = space*1.602*10^(-19);

I = zeros(100, 1);

for i = 1:1000
   I(i) = integraali(space(i), T); 
end

end

