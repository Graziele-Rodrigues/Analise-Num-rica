%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% objetivos: resolver um pvi pelo metodo de dormanda_prince (5,4)
%
%  Entradas:
%          a->limite inferior
%          b->limite superior
%          y0->valor inicial
%          m->numero maximo de subintervalos
%          f->funcao
%  Saidas:
%          Vetx->abscissas
%          Vety->solucao do pvi
%          DifY->diferencas de aproximacoes yi+1 de ordens 5 e 4
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [VetX,VetY,DifY] = dormand_prince (a,b,y0,m,f)
  
  a21 = 1/5;
  a31 = 3/40;
  a32 = 9/40;
  a41 = 44/45;
  a42 = -56/15;
  a43 = 32/9;
  a51 = 19372/6561;
  a52 = -25360/2187;
  a53 = 64448/6561;
  a54 = -212/729;
  a61 = 9017/3168;
  a62 = -355/33;
  a63 = 46732/5247;
  a64 = 49/176;
  a65 = -5103/18656;
  a71 = 35/384;
  a73 = 500/1113;
  a74 = 125/192;
  a75 = -2187/6784;
  a76 = 11/84;
  bc1 = 5179/57600;
  bc3 = 7571/16695;
  bc4 = 393/640;
  bc5 = -92097/339200;
  bc6 = 187/2100;
  bc7 = 1/40;
  c2 = 1/5;
  c3 = 3/10;
  c4 = 4/5;
  c5 = 8/9;
  c6 = 1;
  c7 = 1;
  h = (b-a)/m;
  xt = a;
  yt = y0;
  VetX(1) = xt;
  VetY(1) = yt;
  DifY(1) = 0;
  
  for i=1:m
    x = xt;
    y = yt;
    k1 = f(x,y);
    x = xt + c2 * h;
    y = yt+ a21 * k1 * h;
    k2 = f(x,y);
    x = xt + c3 * h;
    y = yt + (a31*k1+a32*k2) * h;
    k3 = f(x,y);
    x = xt + c4 * h;
    y = yt + (a41*k1+a42*k2+a43*k3) * h;
    k4 = f(x,y);
    x = xt + c5 * h;
    y = yt + (a51*k1+a52*k2+a53*k3+a54*k4) * h;
    k5 = f(x,y);
    x = xt + c6 * h;
    y = yt + (a61*k1+a62*k2+a63*k3+a64*k4+a65*k5) * h;
    k6 = f(x,y);
    x = xt + c7 * h;
    y = yt + (a71*k1+a73*k3+a74*k4+a75*k5+a76*k6) * h;
    k7 = f(x,y);
    xt = a + i * h;
    y4t = yt + h*(bc1*k1+bc3*k3+bc4*k4+bc5*k5+bc6*k6+bc7*k7);
    yt = yt + h * (a71*k1+a73*k3+a74*k4+a75*k5+a76*k6);
    VetX(i+1) = xt;
    VetY(i+1) = yt;
    DifY(i+1) = yt - y4t;
    endfor
    
endfunction