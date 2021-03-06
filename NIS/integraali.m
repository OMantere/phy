function [ I ] = integraali( eV, T )

k       =   1.38064852*10^(-23)
delta   =   0.2*10^(-3)*1.602*10^(-19);
g       =   10^(-5);
kT      =   k*T;
Ef      =   10^(-3)*1.602*10^(-19);

F = @(E) 1./(exp((E-Ef)./kT)+1);
D = @(E) abs(real((E+1*i*g.*delta)./(sqrt((E+1*i*g.*delta).^2-delta^2))));
FeV = @(E) 1./(exp((E+eV-Ef)./kT)+1)
FeVminus = @(E) 1./(exp((E-eV-Ef)./kT)+1)

func = @(E) F(E).*(1-FeV(E)).*D(E)
funcminus = @(E) F(E).*(1-FeVminus(E)).*D(E)

Iplus = integral(func, -10*delta, 10*delta)
Iminus = integral(funcminus, -10*delta, 10*delta)

I = Iplus-Iminus

end

