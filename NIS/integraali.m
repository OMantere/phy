function [ I ] = integraali( eV )

delta   =   0.2*10^(-3)*1.602*10^(-19);
g       =   10^(-5);
kT      =   10^(-23);
Ef      =   0;

F = @(E) 1./(exp((E-Ef)./kT)+1);
D = @(E) abs(real((E+1*i*g.*delta)./(sqrt((E+1*i*g.*delta).^2-delta^2))));
FeV = @(E) 1./(exp((E+eV-Ef)./kT)+1)

func = @(E) F(E).*(1-FeV(E)).*D(E)

I = integral(func, -10*delta, 10*delta)

end

