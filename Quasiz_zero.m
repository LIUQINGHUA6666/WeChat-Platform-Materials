%%准零刚度：
%imag求解
clear all clc 
k=1;b=0.6;a=0.3;a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f./5,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
% set(gcf,'unit','centimeters','position',[20 10 16 16]);
% set(gca,'XTick',[0:0.2:1]) ;set(gca,'YTick',[0:0.2:1]);
%fimplicit求解
clc;clear all;close all;
k1=0.18;k3=1.5;A=0.06;theta=0.05;
f1=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2)./5) ...
    +sqrt(4*theta.^4-4*((k1+3/4*k3*Z.^2)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.0],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2)./5) ...
    -sqrt(4*theta.^4-4*((k1+3/4*k3*Z.^2)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f2,[0.1 1.4 0 1.0],'b','linewidth',3);hold on;
Z=0:0.001:1;
Omegab=sqrt(((k1+3/4*k3.*Z.^2)./5));
plot(Omegab,Z,'k--','linewidth',2);
axis([0.1 1.4 0 1]);
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
%%
%Fig.18
%imag求解
clear all clc 
k=1;b=0.7;a=0.4;a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%fimplicit求解
clc;clear all
k1=1.1;k3=0.81;A=0.06;theta=0.05;
f1=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2)./5) ...
    +sqrt(4*theta.^4-4*((k1+3/4*k3*Z.^2)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.0],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2)./5) ...
    -sqrt(4*theta.^4-4*((k1+3/4*k3*Z.^2)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f2,[0.1 1.4 0 1.0],'b','linewidth',3);hold on;
Z=0:0.001:1;
Omegab=sqrt(((k1+3/4*k3.*Z.^2)./5));
plot(Omegab,Z,'k--','linewidth',2);
axis([0.1 1.4 0 1]);
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%%
%Fig.20
%imag求解
clear all clc 
k=1;b=0.4;a=0.7;a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%fimplicit求解
clc;clear all;close all;
k1=4;k3=-4.8;k5=2.7;A=0.06;theta=0.05;
f1=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5) ...
    +sqrt(4*theta.^4-4*((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.0],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5) ...
    -sqrt(4*theta.^4-4*((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f2,[0.1 1.4 0 1.0],'b','linewidth',3);hold on;
Z=0:0.001:1;
Omegab=sqrt(((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5));
plot(Omegab,Z,'k--','linewidth',2);
axis([0.1 1.4 0 1]);
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%%
%Fig.21
%imag求解
clear all clc 
k=1;b=0.25;a=0.55;a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%fimplicit求解
clc;clear all;close all;
k1=3.9;k3=-10;k5=7.6;A=0.06;theta=0.05;
f1=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5) ...
    +sqrt(4*theta.^4-4*((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.0],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5) ...
    -sqrt(4*theta.^4-4*((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f2,[0.1 1.4 0 1.0],'b','linewidth',3);hold on;
Z=0:0.001:1;
Omegab=sqrt(((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4)./5));
plot(Omegab,Z,'k--','linewidth',2);
axis([0.1 1.4 0 1]);
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%%
%Fig.22三稳态
%imag求解
clear all clc 
k=1;b=0.25;a=0.4;a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%fimplicit求解
clc;clear all;close all;
k1=3;k3=-27;k5=73;k7=-75;k9=27;
A=0.06;theta=0.05;
f1=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4+35/64*k7.*Z.^6+63/128*k9.*Z.^8)./5) ...
    +sqrt(4*theta.^4-4*((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4+35/64*k7.*Z.^6+63/128*k9.*Z.^8)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.0],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4+35/64*k7.*Z.^6+63/128*k9.*Z.^8)./5) ...
    -sqrt(4*theta.^4-4*((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4+35/64*k7.*Z.^6+63/128*k9.*Z.^8)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f2,[0.1 1.4 0 1.0],'b','linewidth',3);hold on;
Z=0:0.001:1;
Omegab=sqrt(((k1+3/4*k3.*Z.^2+5/8*k5.*Z.^4+35/64*k7.*Z.^6+63/128*k9.*Z.^8)./5));
plot(Omegab,Z,'k--','linewidth',2);
axis([0.1 1.4 0 1]);
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%%双稳刚度：
%imag求解
clear all clc 
k=1;b=0.45;a=0.25;a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;

%%
%fimplicit求解
clc;clear all
k1=-0.93;k3=2.5;A=0.05;theta=0.05;
f1=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2)./5) ...
    +sqrt(4*theta.^4-4*((k1+3/4*k3*Z.^2)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.0],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*theta.^2-((k1+3/4*k3.*Z.^2)./5) ...
    -sqrt(4*theta.^4-4*((k1+3/4*k3*Z.^2)./5).*theta.^2+A.^2./Z.^2);
fimplicit(f2,[0.1 1.4 0 1.0],'b','linewidth',3);hold on;
Z=0:0.001:1;
Omegab=sqrt(((k1+3/4*k3.*Z.^2)./5));
plot(Omegab,Z,'k--','linewidth',2);
axis([0.1 1.4 0 1]);
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;


