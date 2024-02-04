% Função 1: f(x, y) = -x^2y + 5x
ax1 = 2;
bx1 = 3;
nx1 = 3;
mx1 = 18;
ay1 = 0;
by1 = 2;
ny1 = 3;
my1 = 18;

f1 = @(x, y) -x.^2 .* y + 5 * x;

[integral1, info1] = newton_cotes_dupla(ax1, bx1, nx1, mx1, ay1, by1, ny1, my1, f1);

disp('Função 1:');
disp(['Valor da integral: ' num2str(integral1)]);
disp(['Info: ' num2str(info1)]);

% Função 2: f(x, y) = -2x^2y + exp(x + y)
ax2 = 10;
bx2 = 11.5;
nx2 = 5;
mx2 = 32;
ay2 = 5;
by2 = 8;
ny2 = 5;
my2 = 32;

f2 = @(x, y) -2*x.^2 .* y + exp(x + y);

[integral2, info2] = newton_cotes_dupla(ax2, bx2, nx2, mx2, ay2, by2, ny2, my2, f2);

disp('Função 2:');
disp(['Valor da integral: ' num2str(integral2)]);
disp(['Info: ' num2str(info2)]);

% Função 3: f(x, y) = cos(x + y)
ax3 = pi/2;
bx3 = pi;
nx3 = 3;
mx3 = 15;
ay3 = pi/4;
by3 = pi/2;
ny3 = 3;
my3 = 15;

f3 = @(x, y) cos(x + y);

[integral3, info3] = newton_cotes_dupla(ax3, bx3, nx3, mx3, ay3, by3, ny3, my3, f3);

disp('Função 3:');
disp(['Valor da integral: ' num2str(integral3)]);
disp(['Info: ' num2str(info3)]);

