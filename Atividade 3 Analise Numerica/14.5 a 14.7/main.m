% Função para o problema a
fa = @(x, y) x^2 + y;

% Definir intervalo e condições iniciais para a
a_a = 0;
b_a = 2.0;
y0_a = 1;
h_values_a = [0.2, 0.4, 0.5];

figure;
subplot(3, 1, 1);
hold on;
title('Solução para a: y'' = x^2 + y, y(0) = 1');

for h = h_values_a
    [VetX_a, VetY_a] = runge_kutta(a_a, b_a, y0_a, round((b_a - a_a) / h), fa);
    plot(VetX_a, VetY_a, '-o', 'DisplayName', ['h = ' num2str(h)]);
end

legend('Location', 'Best');
hold off;

% Função para o problema b
fb = @(x, y) y * (x - y) + 1;

% Definir intervalo e condições iniciais para b
a_b = 0;
b_b = 1.5;
y0_b = 1;
h_values_b = [0.15, 0.3, 0.5];

subplot(3, 1, 2);
hold on;
title('Solução para b: y'' = y(x - y) + 1, y(0) = 1');

for h = h_values_b
    [VetX_b, VetY_b] = runge_kutta(a_b, b_b, y0_b, round((b_b - a_b) / h), fb);
    plot(VetX_b, VetY_b, '-o', 'DisplayName', ['h = ' num2str(h)]);
end

legend('Location', 'Best');
hold off;

% Função para o problema c
fc = @(x, y) -2 * x * y;

% Definir intervalo e condições iniciais para c
a_c = 0;
b_c = 0.5;
y0_c = 1;
h_values_c = [0.1, 0.05];

subplot(3, 1, 3);
hold on;
title('Solução para c: y'' = -2xy, y(0) = 1');

for h = h_values_c
    [VetX_c, VetY_c] = runge_kutta(a_c, b_c, y0_c, round((b_c - a_c) / h), fc);
    plot(VetX_c, VetY_c, '-o', 'DisplayName', ['h = ' num2str(h)]);
end

legend('Location', 'Best');
hold off;

