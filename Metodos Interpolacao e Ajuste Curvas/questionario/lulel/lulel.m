clear
clc

% Dados fornecidos
dates = ['01-Jun'; '16-Jun'; '01-Jul'; '16-Jul'];
hours = [20+56/60; 22+24/60; 22+1/60; 20+44/60];

% Converter datas para números de dias desde a primeira data
dates_serial = datenum(dates, 'dd-mmm');

x = (dates_serial - min(dates_serial));

% Ajuste de uma regressão polinomial de segundo grau
p = polyfit(x, hours, 2);

% Calcular R²
yfit = polyval(p, x);
yresid = hours - yfit;
SSresid = sum(yresid.^2);
SStotal = (length(hours)-1) * var(hours);
rsq = 1 - SSresid/SStotal;

% Gráfico de dispersão
plot(x, hours, 'ob');
title('Gráfico de dispersão e parábola ajustada');
xlabel('Dias desde 01/06');
ylabel('Horas de luz por dia');
hold on;

% Plotar a parábola ajustada
xplot = linspace(min(x), max(x), 100);
yplot = polyval(p, xplot);
plot(xplot, yplot, '-r');

fprintf('Coeficientes da parábola: a = %.4f, b = %.4f, c = %.4f\n', p(1), p(2), p(3));
fprintf('R² = %.4f\n', rsq);

