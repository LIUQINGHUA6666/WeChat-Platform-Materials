clear
Gamma=0.8;
deq=@(t,x) [x(2);x(1)-0.3*x(2)-(x(1))^3+Gamma*cos(1.25*t)];
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(deq,0:(2/1.25)*pi:(4000/1.25)*pi,[1,0]);
plot(xx(:,1),'.','MarkerSize',2)
plot(xx(:,1),xx(:,2),'k*','MarkerSize',10);hold on;
fsize=15;
axis([-2 2 -2 2])
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
title('Poincare Section of the Duffing System')
