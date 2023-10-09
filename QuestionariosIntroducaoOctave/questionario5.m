% Define os valores de t
t = linspace(0, 2, 100);

% Define os valores de ω (variam de 1 a 2)
omega_values = linspace(1, 2, 4);

% Inicializa o gráfico
figure;

% Loop para plotar as quatro curvas
for i = 1:length(omega_values)
    omega = omega_values(i);
    y = exp(-omega * t);

    % Plota a curva com marcador losango e cor vermelha
    plot(t, y, 'r-', 'Marker', 'd', 'LineWidth', 2, 'DisplayName', ['\omega = ' num2str(omega)]);

    hold on;
end

% Configurações adicionais do gráfico
title('Curvas de y = e^{-\omega t}');
xlabel('t');
ylabel('y');
legend;
grid on;
hold off;

