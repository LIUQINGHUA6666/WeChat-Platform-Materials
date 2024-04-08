%An adjustable device to adaptively realise diverse nonlinear force-displacement characteristics
%软化-常数-硬化；
clear all clc;close all
k=1;z=0.1;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'r','linewidth',8);hold on;
f3=@(b,a) 6*b.^2*k*(-(a-z)./((b.^2+(a-z).^2).^2.5)+(a+z)./((b.^2+(a+z).^2).^2.5));
fcontour(f3,[0 1 0 1],'b--','linewidth',8);grid on;
k=1;z=0.3;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'r','linewidth',6);hold on;
f3=@(b,a) 6*b.^2*k*(-(a-z)./((b.^2+(a-z).^2).^2.5)+(a+z)./((b.^2+(a+z).^2).^2.5));
fcontour(f3,[0 1 0 1],'b--','linewidth',6);grid on;
k=1;z=0.6;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'r','linewidth',4);hold on;
f3=@(b,a) 6*b.^2*k*(-(a-z)./((b.^2+(a-z).^2).^2.5)+(a+z)./((b.^2+(a+z).^2).^2.5));
fcontour(f3,[0 1 0 1],'b--','linewidth',4);grid on;
k=1;z=0.9;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'r','linewidth',2);hold on;
f3=@(b,a) 6*b.^2*k*(-(a-z)./((b.^2+(a-z).^2).^2.5)+(a+z)./((b.^2+(a+z).^2).^2.5));
fcontour(f3,[0 1 0 1],'b--','linewidth',2);grid on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[0:0.2:1]) ;set(gca,'YTick',[0:0.2:1]);


%三稳态边界条件：
k=1;z=0.2;
f1=@(b,a) z+2*k*(-(a-z).*(1-1/(sqrt(b.^2+(a-z).^2)))+ (a+z).* (1-1/(sqrt(b.^2+(a+z).^2))));
fcontour(f1,[0 1 0 1],'r','linewidth',6);hold on;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'b-.','linewidth',6);hold on;
k=1;z=0.5;
f1=@(b,a) z+2*k*(-(a-z).*(1-1/(sqrt(b.^2+(a-z).^2)))+ (a+z).* (1-1/(sqrt(b.^2+(a+z).^2))));
fcontour(f1,[0 1 0 1],'r','linewidth',4);hold on;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'b-.','linewidth',4);hold on;
k=1;z=0.7;
f1=@(b,a) z+2*k*(-(a-z).*(1-1/(sqrt(b.^2+(a-z).^2)))+ (a+z).* (1-1/(sqrt(b.^2+(a+z).^2))));
fcontour(f1,[0 1 0 1],'r','linewidth',2);hold on;
f2=@(b,a) 1+k*(4+2*b.^2.*(-1/((b.^2+(a-z).^2).^1.5)-1/((b.^2+(a+z).^2).^1.5)));
fcontour(f2,[0 1 0 1],'b-.','linewidth',2);hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[0:0.2:1]) ;set(gca,'YTick',[0:0.2:1]);

%%
%Fig.2
%双稳态刚度边界条件
clear all clc 
b=0:0.01:0.8;k=1;
a1=b.*sqrt((-1+2*k*(-2+((2+8*k)./(b.^2.*k)).^(1/3)))./(1+4*k));
plot(b,a1,'b','linewidth',6);hold on;
%软硬化边界条件
b=0.57:0.01:1;k=1;
a2=b/2;
plot(b,a2,'r--','linewidth',6);hold on;
%软-常-硬边界条件
x1=[0.557 0.471 0.414 0.404];y1=[0.292 0.347 0.604 0.900];
plot(x1,y1,'gsquare','Markersize',8,'linewidth',4);hold on;
xq1=0.4:0.01:0.58;
p = pchip(x1,y1,xq1);
plot(xq1,p,'g','linewidth',4);
%三稳态边界条件：
x2=[0.543 0.357 0.114];y2=[0.296 0.374 0.569];
plot(x2,y2,'cp','Markersize',6,'linewidth',4);hold on;
xq2=0:0.01:0.57;
p2 = pchip(x2,y2,xq2);
plot(xq2,p2,'c','linewidth',4);grid on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[0:0.2:1]) ;set(gca,'YTick',[0:0.2:1]);axis([0 1 0 1]);

%%
%双稳态特性曲线：
clear all clc 
k=1;b=[0.2 0.3 32/(25*sqrt(5)) 0.75];
a=b.*sqrt((-1+2*k*(-2+((2+8*k)./(b.^2.*k)).^(1/3)))./(1+4*k));
a1=a(1);b1=b(1);
z=-1:0.01:1;
f=z+2*k*(-(a1-z).*(1-1./(sqrt(b1.^2+(a1-z).^2)))+ (a1+z).* (1-1./(sqrt(b1.^2+(a1+z).^2))));
plot(z,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[-1:0.5:1]) ;set(gca,'YTick',[-3:1:3]);axis([-1 1 -3 3]);
%硬特性曲线
clear all clc 
k=1;b=[32/(25*sqrt(5)) 0.7 0.8 1.0];
a=b/2;
a1=a(4);b1=b(4);
z=-1:0.01:1;
f=z+2*k*(-(a1-z).*(1-1./(sqrt(b1.^2+(a1-z).^2)))+ (a1+z).* (1-1./(sqrt(b1.^2+(a1+z).^2))));
plot(z,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[-1:0.5:1]) ;set(gca,'YTick',[-3:1:3]);axis([-1 1 -3 3]);

%硬-常数-硬化
clear all clc 
k=1;b=[0.5714 0.4286 0.4079 0.4];
a=[0.2944 0.5092 0.7143 0.9009]  ;
a1=a(4);b1=b(4);
z=-1:0.01:1;
f=z+2*k*(-(a1-z).*(1-1./(sqrt(b1.^2+(a1-z).^2)))+ (a1+z).* (1-1./(sqrt(b1.^2+(a1+z).^2))));
plot(z,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[-1:0.5:1]) ;set(gca,'YTick',[-3:1:3]);axis([-1 1 -3 3]);

%三稳态
clear all clc 
k=1;b=[0.5 0.257 0.2429 0.1857];
a=[0.3048 0.439 0.5453 0.5974];
a1=a(1);b1=b(1);
z=-1:0.01:1;
f=z+2*k*(-(a1-z).*(1-1./(sqrt(b1.^2+(a1-z).^2)))+ (a1+z).* (1-1./(sqrt(b1.^2+(a1+z).^2))));
plot(z,f,'c','linewidth',4);grid on;hold on;
set(gca,'FontSize',24,'Fontname','Times New Roman');
set(0,'defaultfigurecolor','w')
ax=gca;ax.LineWidth=1.2;
set(gcf,'unit','centimeters','position',[20 10 16 16]);
set(gca,'XTick',[-1:0.5:1]) ;set(gca,'YTick',[-3:1:3]);axis([-1 1 -3 3]);


%%
%g的求解：
%准零刚度恢复力：
b=0.48;a=0.23;k=1;
g1=1+2*((1-a)*(1-1/sqrt((-1+a)^2+b^2))+(1+a)*(1-1/sqrt((1+a)^2+b^2)))*k;
g2=1+(4+b^2*(-2/((-1+a)^2+b^2)^1.5-2/((1+a)^2+b^2)^1.5))*k;
g3=6*b^2*(1/((-1+a)^2+b^2)^2.5+1/((1+a)^2+b^2)^2.5+a*(-1/((-1+a)^2+b^2)^2.5+1/((1+a)^2+b^2)^2.5))*k;                
g4=0.5+2*((0.5-a)*(1-1/sqrt((-0.5+a)^2+b^2))+(0.5+a)*(1-1/sqrt(0.25+a+a^2+b^2)))*k;
g5=1+(4+b^2*(-2/((-0.5+a)^2+b^2)^1.5-2/((0.25+a+a^2+b^2)^1.5)))*k;
g6=6*b^2*(a*(-1/((-0.5+a)^2+b^2)^2.5+1/(0.25+a+a^2+b^2)^2.5)+0.5*(-1/((-0.5+a)^2+b^2)^2.5+1/(0.25+a+a^2+b^2)^2.5))*k;      

k1=1+4*(1-b^2/((a^2+b^2))^1.5)*k;
k3=1/648*(-9720*k1-601*g1+81*g2-3*g3+31232*g4-5376*g5+384*g6);
k5=1/324*(28188*k1+4117*g1-561*g2+21*g3-110336*g4+23424*g5-2112*g6);
k7=1/648*(-158760*k1-41557*g1+5757*g2-219*g3+679424*g4-145152*g5+16512*g6);
k9=1/162*(56376*k1+23215*g1-3303*g2+129*g3-256640*g4+52032*g5-7008*g6);
k11=-2/81*(9720*k1+5423*g1-807*g2+33*g3-46336*g4+8832*g5-1344*g6);
k13=8/81*(648*k1+445*g1-69*g2+3*g3-3200*g4+576*g5-96*g6);
z=-1:0.01:1;
f=(k1*z+k3*z.^3+k5*z.^5+k7*z.^7+k9*z.^9+k11*z.^11+k13*z.^13)/5;
plot(z,f,'b');grid on

%%准零刚度：
%谐波平衡求解
clear all clc 
k=1;b=0.6;a=0.3;
a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
% plot(q,f,'c','linewidth',4);grid on;hold on;
k1=0.2;k3=0.71;k5=3.5;k7=-4.6;k9=1.8;
Z_min=0.1;Z_max=1.0;%(幅值上下限)
Z=linspace(Z_min,Z_max,100);
Omega=zeros(length(Z),2);
A=0.05;
for i=1:length(Z)
   G(i)=(k1+3/4*k3*Z(i).^2+5/8*k5*Z(i).^4+35/64*k7*Z(i).^6+63/128*k9*Z(i).^8)./5;
   B(i)=sqrt(G(i));
   z(i)=A.^2./(4*G(i).*Z(i).^2);
   Omega(i,1)=sqrt(-(2.*z(i)-G(i))+(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
   Omega(i,2)=sqrt(-(2.*z(i)-G(i))-(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
end
T=imag(Omega(:,1))==0 & imag(Omega(:,2))==0;%虚部为零
plot(Omega(T,:),Z(T),'b','linewidth',5);hold on;
axis([0.1 1.4 0 1.2]);
%%
%等高线图求解：
clc;clear all
k1=1.2;k3=0.71;k5=3.5;k7=-4.6;k9=1.8;A=0.05;
Z=0:0.001:1;
G=(k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5;
Omega=sqrt(G);
plot(Omega,Z,'g','linewidth',3);hold on;
% z=A.^2./(4*G.*Z.^2);
% f=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
%     -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
%     -(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
%     -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
%     -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
% fcontour(f,[0.1 1.4 0.1 1.5],'b','linewidth',3);hold on;
f1=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
    +(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
    -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
f2=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
    -(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
    -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
fimplicit(f1,[0.1 1.4 0.1 1.5],'r','linewidth',3);hold on;
fimplicit(f2,[0.1 1.4 0.1 1.5],'b','linewidth',3);hold on;
%%
f1=@(Omega,Z) Omega.^2+ 2*A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2) ...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5) ...
    +sqrt(4*(A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)).^2 ...
    -4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*A^2 ...
    ./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)+ A^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.5],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2) ...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5) ...
    -sqrt(4*(A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)).^2 ...
    -4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*A^2 ...
    ./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)+ A^2./Z.^2);
fimplicit(f2,[0.1 1.4 0.1 1.5],'b','linewidth',3);hold on;
%%
f1=@(Omega,Z) Omega.^2+ 2*A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2) ...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5) ...
    +sqrt(4*(A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)).^2 ...
    -4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*A^2 ...
    ./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)+ A^2./Z.^2);
fimplicit(f1,[0.1 1.4 0.1 1.5],'r','linewidth',3);hold on;
f2=@(Omega,Z) Omega.^2+ 2*A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2) ...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5) ...
    -sqrt(4*(A^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)).^2 ...
    -4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*A^2 ...
    ./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)*Z.^2)+ A^2./Z.^2);
fimplicit(f2,[0.1 1.4 0.1 1.5],'b','linewidth',3);hold on;





















%%
%双稳态：
clear all clc 
k=1;b=0.45;a=0.2;
a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;

k1=-1.9;k3=5.9;k5=-2.4;k7=-1.4;k9=1.2;
Z_min=0.1;Z_max=1.0;%(幅值上下限)
Z=linspace(Z_min,Z_max,100);
Omega=zeros(length(Z),2);
A=0.05;
for i=1:length(Z)
   G(i)=(k1+3/4*k3*Z(i).^2+5/8*k5*Z(i).^4+35/64*k7*Z(i).^6+63/128*k9*Z(i).^8)/5;
   B(i)=sqrt(G(i));
   z(i)=A.^2./(4*G(i).*Z(i).^2);
   Omega(i,1) = sqrt(-(2.*z(i)-G(i))+(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
   Omega(i,2) = sqrt(-(2.*z(i)-G(i))-(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
end
T = imag(Omega(:,1))==0 & imag(Omega(:,2))==0;%虚部为零
plot(Omega(T,:),Z(T),'g','linewidth',5);hold on;
axis([0.1 1.4 0.1 1.2]);

%%
%fimplicit
clear all; close all; clc
k1=-1.9;k3=5.9;k5=-2.4;k7=-1.4;k9=1.2;A=0.05;
f1=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
    +(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
    -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
f2=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
    -(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
    -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
fimplicit(f1,[0.1 1.4 0.1 1.5],'r','linewidth',3);hold on;
fimplicit(f2,[0.1 1.4 0.1 1.5],'b','linewidth',3);hold on;


%三稳态：
clear all clc 
k=1;b=0.25;a=0.4;
a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;

k1=3;k3=27;k5=73;k7=-75;k9=27;
Z_min=0.1;Z_max=1.0;%(幅值上下限)
Z=linspace(Z_min,Z_max,100);
Omega=zeros(length(Z),2);
A=0.1;
for i=1:length(Z)
   G(i)=(k1+3/4*k3*Z(i).^2+5/8*k5*Z(i).^4+35/64*k7*Z(i).^6+63/128*k9*Z(i).^8)/5;
   B(i)=sqrt(G(i));
   z(i)=A.^2./(4*G(i).*Z(i).^2);
   Omega(i,1) = sqrt(-(2.*z(i)-G(i))+(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
   Omega(i,2) = sqrt(-(2.*z(i)-G(i))-(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
end
T = imag(Omega(:,1))==0 & imag(Omega(:,2))==0;%虚部为零
plot(Omega(T,:),Z(T),'r','linewidth',5);hold on;
axis([0.1 1.4 0.1 1.2]);

%%
%fimplicit
clear all; close all; clc
k1=3;k3=27;k5=73;k7=-75;k9=27;A=0.15;
f1=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
    +(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
    -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
f2=@(Omega,Z) Omega.^2+2*A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2)...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)+...
    -(sqrt(Z.^2.*(2*(A.^2./(4*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).*Z.^2))...
    -((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5)).^2 ...
    -(Z.^2.*((k1+3/4*k3*Z.^2+5/8*k5*Z.^4+35/64*k7*Z.^6+63/128*k9*Z.^8)./5).^2-A.^2)))./Z;
fimplicit(f1,[0.1 1.4 0.01 1.5],'r','linewidth',3);hold on;
fimplicit(f2,[0.1 1.4 0.01 1.5],'b','linewidth',3);hold on;



%先软后硬：
clear all clc 
k=1;b=0.4;a=0.75;
a1=a(1);b1=b(1);
q=-1:0.01:1;
f=q+2*k*(-(a1-q).*(1-1./(sqrt(b1.^2+(a1-q).^2)))+ (a1+q).* (1-1./(sqrt(b1.^2+(a1+q).^2))));
plot(q,f,'c','linewidth',4);grid on;hold on;

k1=3.9;k3=-1.4;k5=-6.4;k7=9.4;k9=-3.5;
Z_min=0.01;Z_max=1.5;%(幅值上下限)
Z=linspace(Z_min,Z_max,1000);
Omega=zeros(length(Z),2);
A=0.12;
for i=1:length(Z)
   G(i)=(k1+3/4*k3*Z(i).^2+5/8*k5*Z(i).^4+35/64*k7*Z(i).^6+63/128*k9*Z(i).^8)/5;
   B(i)=sqrt(G(i));
   z(i)=A.^2./(4*G(i).*Z(i).^2);
   Omega(i,1) = sqrt(-(2.*z(i)-G(i))+(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
   Omega(i,2) = sqrt(-(2.*z(i)-G(i))-(sqrt((4*Z(i).^4.*(2.*z(i)-G(i)).^2)-(4*Z(i).^2.*(Z(i).^2.*G(i).^2-A.^2))))./ (2*Z(i).^2));
end
T = imag(Omega(:,1))==0 & imag(Omega(:,2))==0;%虚部为零
plot(Omega(T,:),Z(T),'r','linewidth',5);hold on;
axis([0.1 1.4 0.1 1.2]);

