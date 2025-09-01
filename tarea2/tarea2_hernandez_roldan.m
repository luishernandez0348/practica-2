[t, x] = ode45(@pendulo_dinamica, [0, 9], [0 0 deg2rad(1) 0]);

subplot(2,1,1);
plot(t, x(:,3), 'Color', [0, 1, 0], 'LineWidth', 2);
grid on;
xlabel('Tiempo [s]');
ylabel('x_c [m]');
title('Posición del carro');

subplot(2,1,2);
plot(t, rad2deg(x(:,3)), 'Color', [1, 1, 0], 'LineWidth', 2);
grid on
xlabel('Tiempo [s]');
ylabel('\alpha [°]');
title('Ángulo del péndulo');