close all

%y_sv_alku_korjattu = y_sv(1:1018) - min(y_sv(1:500));
%y_sv_kaikki_korjattu = cat(1, y_sv_alku_korjattu, y_sv(1019:end)+ min(y_sv(1:1019)));

m = 0.1;
g = 9.81;
x_pv_si = x_pv/100;
x_sv_si = x_sv/100;
y_pv_si = y_pv/100;
y_sv_si = y_sv/100;

%y_sv_si_korjattu = y_sv_si - min(y_sv_si(1:300));
y_pv_si_korjattu = y_pv_si - min(y_pv_si);

vx_pv = diff(x_pv_si) ./ diff(t);
ax_pv = diff(vx_pv) ./ diff(t(2:end)); 
vx_sv = diff(x_sv_si) ./ diff(t);
ax_sv = diff(vx_sv) ./ diff(t(2:end));
px_pv = m .* vx_pv;
px_sv = m .* vx_sv;

Ekin_pv = vx_pv .* vx_pv .* m ./ 2;
Ekin_sv = vx_sv .* vx_sv .* m ./ 2;
Epot_pv = y_pv_si_korjattu .* g .* m; 
Epot_sv = y_sv_si .* g .* m;

Etot_pv = Ekin_pv + Epot_pv(2:end);
Etot_sv = Ekin_sv + Epot_sv(2:end);

figure
hold on
%plot(t, x_pv);
%plot(t(2:end), vx_pv);
%plot(t(3:end), ax_pv);
%plot(x_pv_si(2:end), px_pv);
%plot(t(2:end), Ekin_pv);
%plot(t, Epot_pv);
%plot(t(2:end), Etot_pv);
%xlabel('Aika (s)'); 
%ylabel('Totaalienergia (J)');

%plot(t, x_sv);
%plot(t(2:end), vx_sv);
%plot(t(3:end), ax_sv);
plot(x_pv_si(2:end), vx_pv);
plot(x_sv_si(2:end), vx_sv);
xlabel('Paikka (m)'); 
ylabel('Nopeus (m/s)');
legend('Vaimentamaton heiluri', 'Vaimennettu heiluri');
%plot(x_sv_si(2:end), px_sv);
%plot(t(2:end), Etot_sv);
%xlabel('Aika (s)'); 
%ylabel('Totaalienergia (J)');