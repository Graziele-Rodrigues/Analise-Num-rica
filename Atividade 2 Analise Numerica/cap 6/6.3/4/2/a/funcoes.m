clear
clc
disp('Funcao 1');
x = [-1.178 -0.6236];
y = x./exp(x./2);
z = -1;
Pz = polinomio_newton (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

disp('');
x = [-1.178 -0.3236 -0.3464];
y = x./exp(x./2);
z = -0.5;
Pz = polinomio_newton (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

disp('');
x  = [0.485 0.9007 1.594 2.564];
y = x./exp(x./2);
z = -1;
Pz = polinomio_newton (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

disp('');
disp('Funcao 2');
x = [-2.148 0.9007];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 0.9007 0];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 0 0.9007 1.732];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 -1.532 -0.607 0 1.732];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)



disp('');
disp('Funcao 3');
x = [-2.564 -1.316];
y = sin((x).^2)./exp(x) - 1;
z = -2.286;
Pz = polinomio_newton (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)

disp('');
x = [-2.564 -2.148 -1.316];
y = sin((x).^2)./exp(x) - 1;
z = -2.286;
Pz = polinomio_newton (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007];
y = sin((x).^2)./exp(x) - 1;
z = -1.732;
Pz = polinomio_newton (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007 0.6236];
y = sin((x).^2)./exp(x) - 1;
z = -0.2079;
Pz = polinomio_newton (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)
