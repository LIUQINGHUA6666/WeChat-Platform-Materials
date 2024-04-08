clc;clear all;
xi=0.01; beta=1; P=0.4;
A_min=0.01;A_max=5;%(幅值上下限)
A_analytical=linspace(A_min,A_max,100);
Omega=zeros(length(A_analytical),2);
for i=1:length(A_analytical)
   Omega(i,1) = sqrt(-1-xi^2/2+3*beta*A_analytical(i)^2/4 + ...
        sqrt(P^2/A_analytical(i)^2+xi^4/4-xi^2-3*xi^2*beta*A_analytical(i)^2/4));
    Omega(i,2) = sqrt(-1-xi^2/2+3*beta*A_analytical(i)^2/4 - ...
        sqrt(P^2/A_analytical(i)^2+xi^4/4-xi^2-3*xi^2*beta*A_analytical(i)^2/4));
end
A = imag(Omega(:,1))==0 & imag(Omega(:,2))==0;%虚部为零
plot(Omega(A,:),A_analytical(A),'g','Markersize',5);hold on;

%%
clc;clear all
xi=0.05; beta=0.2; P=0.1;
f1=@(Omega,Z) Omega.^2-(1-xi.^2./2+3*beta*Z.^2/4- ...
        sqrt(P^2/Z.^2+xi^4/4-xi^2-3*xi.^2*beta*Z.^2/4));
fimplicit(f1,[0 3.5 0.01 5],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2-(1-xi.^2./2+3*beta*Z.^2/4+ ...
        sqrt(P^2/Z.^2+xi^4/4-xi^2-3*xi.^2*beta*Z.^2/4));
fimplicit(f2,[0 3.5 0.01 5],'b','linewidth',3);hold on;
% plot(Omega(:,1),B,'r','linewidth',5);hold on;

%%
clc;clear all
xi=0.01; beta=1; P=0.4;
f1=@(Omega,a) (-1-Omega.^2+0.75*beta.*a.^3).^2.*a.^2+xi^2.*Omega.^2.*a.^2-P^2;
fimplicit(f1,[0 3.5 0 3],'c','linewidth',3);hold on;

f2=@(Omega,Z) Omega.^2-(1-xi.^2./2+3*beta*Z.^2/4+ ...
        sqrt(P^2/Z.^2+xi^4/4-xi^2-3*xi.^2*beta*Z.^2/4));
fimplicit(f2,[0 3.5 0.01 5],'b','linewidth',3);hold on;
% plot(Omega(:,1),B,'r','linewidth',5);hold on;











