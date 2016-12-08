load carsmall

p1 = 102.9;
h1 = [98 78 60 51 97 82 64 49 37 70];
h2 = [63 45 44 26 64 44 41 31 12 40];
p2 = [163.9 186.2 142.4 183.1 159.3 199.5 162.2 158.9 224.6 182.2];

Vp = 500*2^2*pi;

V = @(h) Vp + h*16.5^2*pi;
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


