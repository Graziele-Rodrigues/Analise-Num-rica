% Função para o problema a
fa = @(x, y) sqrt(x);

% Definir intervalo e condições iniciais para a
a_a = 0;
b_a = 2;
y0_a = 0;

% Números de subintervalos para a
m_values_a = [2, 3, 4, 5];

figure;
subplot(3, 1, 1);
hold on;
title('Solução para a: y'' = sqrt(x), y(0) = 0');

for m = m_values_a
    [VetX_a, VetY_a] = euler(a_a, b_a, y0_a, m, fa);
    plot(VetX_a, VetY_a, '-o', 'DisplayName', ['m = ' num2str(m)]);
end

legend('Location', 'Best');
hold off;

% Função para o problema b
fb = @(x, y) x^2 + y^2;

% Definir intervalo e condições iniciais para b
a_b = 1;
b_b = 2;
y0_b = 0;

% Números de subintervalos para b
m_values_b = [2, 4, 6, 8];

subplot(3, 1, 2);
hold on;
title('Solução para b: y'' = x^2 + y^2, y(1) = 0');

for m = m_values_b
    [VetX_b, VetY_b] = euler(a_b, b_b, y0_b, m, fb);
    plot(VetX_b, VetY_b, '-o', 'DisplayName', ['m = ' num2str(m)]);
end

legend('Location', 'Best');
hold off;

% Função para o problema c
fc = @(x, y) x * y;

% Definir intervalo e condições iniciais para c
a_c = 0;
b_c = 1;
y0_c = 1;

% Números de subintervalos para c
m_values_c = [4, 6, 8, 10];

subplot(3, 1, 3);
hold on;
title('Solução para c: y'' = xy, y(0) = 1');

for m = m_values_c
    [VetX_c, VetY_c] = euler(a_c, b_c, y0_c, m, fc);
    plot(VetX_c, VetY_c, '-o', 'DisplayName', ['m = ' num2str(m)]);
end

legend('Location', 'Best');
hold off;

