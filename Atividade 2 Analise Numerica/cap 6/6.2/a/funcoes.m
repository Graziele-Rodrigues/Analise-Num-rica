clear
clc

# Primeira funcao
disp('Primeira funcao');
#1
disp('');
disp('Lista 1');
x = [-8.154 -4.919];
y1 = exp(-8.154/2)*(-8.154)^2 - 10;
y2 = exp(-4.919/2)*(-4.919)^2 - 10;
y = [y1 y2];
z = -5;
valor_calculado = exp(z/2)*(z)^2 - 10
valor_interpolado = interpola (x, y, z)
erro  = abs(valor_calculado - valor_interpolado)

#2
disp('');
disp('Lista 2');
x = [-6.166 -3.950 -1.871];
y1 = exp(-6.166/2)*(-6.166)^2 - 10;
y2 = exp(-3.950/2)*(-3.950)^2 - 10;
y3 = exp(-1.871/2)*(-1.871)^2 - 10;
y = [y1 y2 y3];
z = -4.76;
valor_calculado = exp(z/2)*(z)^2 - 10
valor_interpolado = interpola (x, y, z)
erro  = abs(valor_calculado - valor_interpolado)

#3
disp('');
disp('Lista 3');
x = [-1.455 0 0.762 1.178];
y1 = exp(-1.455/2)*(-1.455)^2 - 10;
y2 = exp(0/2)*(0)^2 - 10;
y3 = exp(0.762/2)*(0.762)^2 - 10;
y4 = exp(1.178/2)*(1.178)^2 - 10;
y = [y1 y2 y3 y4];
z = -0,83;
valor_calculado = exp(z/2)*(z)^2 - 10
valor_interpolado = interpola (x, y, z)
erro  = abs(valor_calculado - valor_interpolado)


clear
clc

# Segunda funcao
disp('Segunda funcao');
# 1
disp('');
disp('Lista 1');
x = [0.5 1.0];
y1 = 5*(0.5^2) + 3*(0.5) - 10;
y2 = 5*(1.0^2) + 3*(1.0) - 10;
y = [y1 y2];
z = 0.250;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 2
disp('');
disp('Lista 2');
x = [-1.5 0.5 1.5];
y1 = 5*(-1.5^2) + 3*(-1.5) - 10;
y2 = 5*(0.5^2) + 3*(0.5) - 10;
y3 = 5*(1.5^2) + 3*(1.5) - 10;
y = [y1 y2 y3];
z = 0;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 3
disp('');
disp('Lista 3');
x = [-2.0 -1.5 0.0 2.0];
y1 = 5*(-2.0^2) + 3*(-2.0) - 10;
y2 = 5*(-1.5^2) + 3*(-1.5) - 10;
y3 = 5*(0.0^2) + 3*(0.0) - 10;
y4 = 5*(2.0^2) + 3*(2.0) - 10;
y = [y1 y2 y3 y4];
z = 1.5;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 4
disp('');
disp('Lista 4');
x = [-4.0 -2.5 2.0 3.0 4.0];
y1 = 5*(-4.0^2) + 3*(-4.0) - 10;
y2 = 5*(-2.5^2) + 3*(-2.5) - 10;
y3 = 5*(2.0^2) + 3*(2.0) - 10;
y4 = 5*(3.0^2) + 3*(3.0) - 10;
y5 = 5*(4.0^2) + 3*(4.0) - 10;
y = [y1 y2 y3 y4 y5];
z = 1;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

clear
clc

clear
clc

# Terceira funcao
disp('Terceira funcao');

# 1
disp('');
disp('Lista 1');
x = [-3.11 5.196];
y1 = 4/(exp(5*(-3.11)^2));
y2 = 4/(exp(5*(5.196)^2));
y = [y1 y2];
z = 2;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 2
disp('');
disp('Lista 2');
x = [-3.11 -2.50 2.15];
y1 = 4/(exp(5*(-3.11)^2));
y2 = 4/(exp(5*(-2.50)^2));
y3 = 4/(exp(5*(2.15)^2));
y = [y1 y2 y3];
z = 1.150;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 3
disp('');
disp('Lista 3');
x = [-3.11 -2.00 0.0 3.150];
y1 = 4/(exp(5*(-3.11)^2));
y2 = 4/(exp(5*(-2.00)^2));
y3 = 4/(exp(5*(0.0)^2));
y4 = 4/(exp(5*(3.150)^2));
y = [y1 y2 y3 y4];
z = -1.65;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

#4
disp('');
disp('Lista 4');
x = [-4.53 -2.56 -1.76 3.6 5.13];
y1 = 4/(exp(5*(-4.53)^2));
y2 = 4/(exp(5*(-2.56)^2));
y3 = 4/(exp(5*(-1.76)^2));
y4 = 4/(exp(5*(3.6)^2));
y5 = 4/(exp(5*(5.13)^2));
y = [y1 y2 y3 y4 y5];
z = 2.25;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)
