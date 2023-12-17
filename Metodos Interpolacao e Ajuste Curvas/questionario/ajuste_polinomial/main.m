clear
clc

n = 21;
v = 1;
ii = 1;

x = [6.2;5.03;5.54;5.19;5.41;5.01;5.71;6.2;6.61;5.18;5.29;6.22;5.35;6.12;5.06;6.29;6.46;6.5;6.39;6.77];
y = [0.32;0.01;0.16;0.06;0.13;0.01;0.21;0.32;0.41;0.06;0.09;0.33;0.11;0.30;0.02;0.34;0.38;0.36;0.44];

for p = 3 : 6
  disp('');
  [b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, p, ii, x, y)
endfor

#O que apresentou melhor solucao foi o quinto grau visto que o coeficiente de determinação é o que mais se aproxima de 1.
