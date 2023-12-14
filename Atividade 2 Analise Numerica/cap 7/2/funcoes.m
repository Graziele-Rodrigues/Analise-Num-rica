clear
clc
disp('Funcao 1');
x1 = [-8.154 -4.919 -1.45 0];
y1 = exp(x1./2).*x1.^2 - 10;
z1 = [-6 -4.53 -0.67 2.5];
figure(1);
interpolar_splines (x1, y1, z1)

x2 = [-6.166 -3.950 -1.871 1.23];
y2 = exp(x2./2).*x2.^2 - 10;
z2 = [-4.76 -2.5 1.45 3.76];
figure(2);
interpolar_splines (x2, y2, z2)

x3 = [-1.455 0 0.762 1.178];
y3 = exp(x3./2).*x3.^2 - 10;
z3 = [-0.83 0.54 1.96 3.35];
figure(3);
interpolar_splines (x3, y3, z3)


disp('');
disp('Funcao 2');

x1 = [0.5 1 4.6 5.7 8.2];
y1 = 5*x1.^2 + 3*x1 - 10;
z1 = [0.250 1.56 4.98 7.37];
figure(1);
interpolar_splines (x1, y1, z1)

x2 = [-1.5 0.5 1.5 4.76 7.34];
y2 = 5*x2.^2 + 3*x2 - 10;
z2 = [0 1.34 2.98 6.67];
figure(2);
interpolar_splines (x2, y2, z2)

x3 = [-2 -1.5 0 2.0 6.7];
y3 = 5*x3.^2 + 3*x3 - 10;
z3 = [1.5 -1.3 0.43 5.38];
figure(3);
interpolar_splines (x3, y3, z3)

x4 = [-4 -2.5 2 3 4];
y4 = 5*x4.^2 + 3*x4 - 10;
z4 = [1 -3.87 1.35 3.56];
figure(4);
interpolar_splines (x4, y4, z4)

disp('');
disp('Funcao 3');


x1 = [-3.11 -2.196 -0.43 1.9 2.65];
y1 = 4./exp(5*x1.^2);
z1 = [-2 -2.35 -0.025 2.40];
figure(1);
interpolar_splines (x1, y1, z1)

x2 = [-3.11 -2.5 2.15 4.13 6.24];
y2 = 4./exp(5*x2.^2);
z2 = [1.15 2.16 5.3 6.15];
figure(2);
interpolar_splines (x2, y2, z2)

x3 = [-3.11 -2 0 3.15 4.52];
y3 = 4./exp(5*x3.^2);
z3 = [-1.65 -2.12 0.42 2.35];
figure(3);
interpolar_splines (x3, y3, z3)

x4 = [-4.53 -2.56 -1.76 3.6 5.13];
y4 = 4./exp(5*x4.^2);
z4 = [2.25 -3.2 1.63 4.79];
figure(4);
interpolar_splines (x4, y4, z4)
