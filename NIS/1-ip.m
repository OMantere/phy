close all

space = linspace(-3*10^(-3), 10^(-3), 100);
space = space*1.602*10^(-19);

I = zeros(100, 1);

for i = 1:100 
   I(i) = integraali(space(i)); 
end

plot(space, I)


%delta   =   0.2*10^(-3)*1.602*10^(-19);
%g       =   10^(-5);
%kT      =   10^(-23);
%Ef      =   0;

%F = @(E) 1./(exp((E-Ef)./kT)+1);
%D = @(E) abs(real((E+1*i*g.*delta)./(sqrt((E+1*i*g.*delta).^2-delta^2))));

%Espace = linspace(-10*delta, 10*delta, 100);
%D1 = D(Espace)

%plot(Espace, D(Espace))
%hold on
%plot(Espace, F(Espace))