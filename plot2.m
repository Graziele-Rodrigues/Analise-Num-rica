#Y=cos2(x)+sen2(x), [-12 14], 50 pontos
x = linspace(-12,14,50);
y = (cos(x)).^2 + (sin(x)).^2;
plot(x,y)
title('y = cos(x)^2 + sin(x)^2')
