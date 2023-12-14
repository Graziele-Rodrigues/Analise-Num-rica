clear
clc
disp('Funcao 1');
x = [-1.178 -0.6236];
y = x./exp(x./2);
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-1.178 -0.3236 -0.3464];
y = x./exp(x./2);
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x  = [0.485 0.9007 1.594 2.564];
y = x./exp(x./2);
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
disp('Funcao 2');
x = [-2.148 0.9007];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.148 0.9007 0];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.148 0 0.9007 1.732];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.148 -1.532 -0.607 0 1.732];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
disp('Funcao 3');
disp('');
x = [-2.564 -1.316];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.564 -2.148 -1.316];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007 0.6236];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)
