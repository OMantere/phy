T_arvaus = 2.1;
m = 0.1;
A_pv = 0.214;
A_sv = 0.188;

fun = @(v, t) v(2).*exp(-v(1).*t/(2.*m)).*sin((2.*pi/v(3)).*t + v(4));

arvaus_pv = [0, A_pv, T_arvaus, -pi/2];
fitted_pv = lsqcurvefit(fun, arvaus_pv, t, x_pv); 
arvaus_sv = [0, A_sv, T_arvaus, -pi/2];
fitted_sv = lsqcurvefit(fun, arvaus_sv, t, x_sv);


close all
figure
hold on
plot(t, fun(fitted_pv, t));
plot(t, x_pv);
legend('Malli', 'Data');
xlabel('Aika (s)');
ylabel('Siirtymä (m)');

figure
hold on
plot(t, fun(fitted_sv, t));
plot(t, x_sv);
legend('Malli', 'Data');
xlabel('Aika (s)');
ylabel('Siirtymä (m)');