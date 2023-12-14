clear
clc
disp('funcao 1');
x = [-1.178 -0.6236];
y = x./exp(x./2);
z = -1;
Pz = polinomio_lagrange (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

x = [-1.178 -0.3236 - 0.3464];
y = x./exp(x./2);
z = -0.5;
Pz = polinomio_lagrange (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

x  = [0.485 0.9007 1.594 2.564];
y = x./exp(x./2);
z = -1;
Pz = polinomio_lagrange (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

disp('');
disp('funcao 2');
x = [-2.148 0.9007];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 0.9007 0];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 0 0.9007 1.732];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 -1.532 -0.607 0 1.732];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)


