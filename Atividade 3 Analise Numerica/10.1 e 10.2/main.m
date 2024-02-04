% Função 1
a1 = -1;
b1 = 2;
n1 = 3;
m1 = 18;

f1 = @(x) -3*x.^3 + 3/2*x.^2 + 5;

[integral1, info1] = newton_cotes(a1, b1, n1, m1, f1);

disp('Função 1:');
disp(['Valor da integral: ' num2str(integral1)]);
disp(['Info: ' num2str(info1)]);

% Função 2:
a2 = -0.5;
b2 = 0.5;
n2 = 5;
m2 = 32;

f2 = @(x) 4*x.^2 + exp(5*x);

[integral2, info2] = newton_cotes(a2, b2, n2, m2, f2);

disp('Função 2:');
disp(['Valor da integral: ' num2str(integral2)]);
disp(['Info: ' num2str(info2)]);

% Função 3
a3 = 1;
b3 = 7;
n3 = 3;
m3 = 15;

f3 = @(x) 1/x * 20*sin(2*x);

[integral3, info3] = newton_cotes(a3, b3, n3, m3, f3);

disp('Função 3:');
disp(['Valor da integral: ' num2str(integral3)]);
disp(['Info: ' num2str(info3)]);

