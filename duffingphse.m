lqh=@(t,x) [x(2);x(1)-0.3*x(2)-(x(1))^3+0.8*cos(1.25*t)]; 
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(lqh,[0 200],[1,0],options);
plot(xx(1000:end,1),xx(1000:end,2),'b','linewidth','3')
fsize=15;
axis([-2 2 -2 2])
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)

clear
Gamma=0.8;
lqh=@(t,x) [x(2);x(1)-0.3*x(2)-(x(1))^3+Gamma*cos(1.25*t)];
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(lqh,0:(2/1.25)*pi:(4000/1.25)*pi,[1,0]);
plot(xx(:,1),'.','MarkerSize',2)
plot(xx(:,1),xx(:,2),'k*','MarkerSize',10);hold on;
fsize=15;
axis([-2 2 -2 2])
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
title('Poincare Section of the Duffing System')
