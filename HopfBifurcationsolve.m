% Programs 13d - Hopf Bifurcation.
% Animation of Hopf bifurcation of a limit cycle from the origin.
% NOTE: Programs 13c must be in the same directory as Programs 13d.
clear
global mu
for j = 1:48
F(j) = getframe;
mu=j/40-1; % mu goes from -1 to 0.2.
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
x0=0.5;y0=0.5;
[t,x]=ode45(@HopfBifurcation,[0 80],[x0 y0],options);
plot(x(:,1),x(:,2),'b');
axis([-1 1 -1 1])
fsize=15;
set(gca,'XTick',-1:0.2:1,'FontSize',fsize)
set(gca,'YTick',-1:0.2:1,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
title('Hopf Bifurcation','FontSize',15);
F(j) = getframe;
end
movie(F,20)