[t,x] = ode45(@pendulo_dinamica,[0,10],[0 0 deg2rad(1) 0]);

figure;
subplot(2,1,1);
plot(t, x(:,1),'LineWidth',1.5); grid on;
xlabel('Tiempo [s]'); ylabel('x_c [m]');
title('Posición del carro');

subplot(2,1,2);
plot(t, rad2deg(x(:,3)),'LineWidth',1.5); grid on;
xlabel('Tiempo [s]'); ylabel('\alpha [°]');
title('Ángulo del péndulo');