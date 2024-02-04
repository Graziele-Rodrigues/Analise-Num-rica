% Função 1
a1 = 1;
b1 = 3;
n1 = 3;

f1 = @(x) 4*x.^2 + 5;

[integral1, info1] = newton_cotes(a1, b1, 3, n1, f1);

disp('Função 1:');
disp(['Valor da integral: ' num2str(integral1)]);
disp(['Info: ' num2str(info1)]);

% Função 2
a2 = 1;
b2 = 3;
n2 = 5;

f2 = @(x) 3*x.^3.*exp(x).^2;

[integral2, info2] = newton_cotes(a2, b2, 3, n2, f2);

disp('Função 2:');
disp(['Valor da integral: ' num2str(integral2)]);
disp(['Info: ' num2str(info2)]);

% Função 3
a3 = -pi/4;
b3 = pi/2;
n3 = 3;

f3 = @(x) 3*x.*cos(pi*x);

[integral3, info3] = newton_cotes(a3, b3, 3, n3, f3);

disp('Função 3:');
disp(['Valor da integral: ' num2str(integral3)]);
disp(['Info: ' num2str(info3)]);

