load carsmall

p1 = 102.9;
h1 = [90 66 35 90 65 90 62 88 65 34];
h2 = [66 35 19 65 35 33 17 65 33 15];
p2 = [133 166 142 134 163 205 211 132 165 152];

Vp = 400*(3^2)*pi + 50*(2^2))*pi;

V = @(h) Vp + h*8^2*pi;
vakio = @(p1_, p2_, V1_, V2_) log(p2_/p1_)/log(V1_/V2_);

vakiot = [];

for i=1:length(p2)
    V1 = V(h1(i));
    V2 = V(h2(i));
    gamma = vakio(p1, p2(i), V1, V2);
    vakiot = [vakiot gamma];
end

vakiot
scatter(p2, vakiot)
xlabel('Loppupaine')
ylabel('Adiabaattivakio')

figure
scatter(p2, vakiot)
hold on
lm = fitlm(p2, vakiot, 'linear')
plot(lm)

xlabel('Loppupaine')
ylabel('Adiabaattivakio')
title('')


