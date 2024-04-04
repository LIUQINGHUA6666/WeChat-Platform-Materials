%% L-P solution
%�����Ըն�K��Ӱ�죺
clc;clear
w1=linspace(-4,4,1000);
k1=[-2,-1,0,1,2];
u=0.3;
a=linspace(0,2,1000);
[w1,a]=meshgrid(w1,a);
%Z=-1/4+a.^2*(u^2+(w1-3/8.*k.*a.^2).^2);
co=['bgkrm'];
for i=1:length(k1)
    k=k1(i);
    Z=-1/4+a.^2.*(u.^2+(w1-3/8.*k.*a.^2).^2);
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on
hold on
%�Ǽ����ߣ�
k2=[-2,-1,1,2];
w2=linspace(-4,4,1000);
for i=1:length(k2)
    k=k2(i);
    backbone=sqrt(abs(8.*w2./(3.*k)));
    plot(w2,backbone,'-')
    hold on
end

%% L-P solution
%����ǿ�ȵ�Ӱ��
clc;clear
w1=linspace(-4,4,1000);
k=0.1;
p1=[1,2,3,4,5]
u=0.3;
a=linspace(0,10,1000);
[w1,a]=meshgrid(w1,a);
%Z=-1/4+a.^2*(u^2+(w1-3/8.*k.*a.^2).^2);
co=['bgkrm'];
for i=1:length(p1)
    p=p1(i);
    Z=-p.^2/4+a.^2.*(u.^2+(w1-3/8.*k.*a.^2).^2);
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on
hold on
k2=0.1;
w2=linspace(-4,4,1000);
backbone=sqrt(abs(8.*w2./(3.*k2)));
plot(w2,backbone,'-')
hold on

%%�����Ӱ�죺
%% L-P solution
clc;clear
w1=linspace(-4,4,1000);
k=0.1;u1=[0.05,0.1,0.5];a=linspace(0,10,1000);p=1
[w1,a]=meshgrid(w1,a);
%Z=-A+1./((1-s.^2-3*yi/4*A.^2).^2+(2*xige*s).^2).^(1/2);
%Z=-1/4+a.^2*(u^2+(w1-3/8.*k.*a.^2).^2);
co=['bgk'];
for i=1:length(u1)
    u=u1(i);
    Z=-p.^2/4+a.^2.*(u.^2+(w1-3/8.*k.*a.^2).^2);
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on
hold on
%
k2=0.1;
w2=linspace(-4,4,1000);
backbone=sqrt(abs(8.*w2./(3.*k2)));
plot(w2,backbone,'-')
hold on

%%
%��г���񶯸ն�Ӱ�죺
clc;clear
w0=1;w1=linspace(-4,15,1000);a=linspace(0,5,1000);
p=1.8;u=0.7;k1=[1,2,3];[w1,a]=meshgrid(w1,a);
%Ƶ�췽��Z=k^2.*shit.^6./576./w0.^2+(u.^2/9+(w1-k.*shit.^2./(4.*w0)-k.*a.^2./(8.*w0)).^2).*a.^2;
co=['bkr'];
for i=1:length(k1)
    k=k1(i);
    shit=9.*p./(8.*w0.^2);
    Z=-k.^2.*shit.^6./(576.*w0.^2)+(u.^2./9+(w1-k.*shit.^2./(4.*w0)-k.*a.^2./(8.*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];contour(w1,a,Z,v,co(i));hold on
end
grid on
mesh(w1,a,Z)

%%
%��г���񶯼���Ӱ�죺
clc;clear
w0=1;w1=linspace(-4,6,1000);a=linspace(0,2,1000);
p=1.8;u=0.7;k=3;[w1,a]=meshgrid(w1,a);shit1=[1,1.3,1.5];
%Ƶ�췽��Z=k^2.*shit.^6./576./w0.^2+(u.^2/9+(w1-k.*shit.^2./(4.*w0)-k.*a.^2./(8.*w0)).^2).*a.^2;
co=['bkr'];
for i=1:length(shit1)
    shit=shit1(i);
    Z=-k.^2.*shit.^6./(576.*w0.^2)+(u.^2./9+(w1-k.*shit.^2./(4.*w0)-k.*a.^2./(8.*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];contour(w1,a,Z,v,co(i));hold on
end
grid on

%%
%��г��������Ӱ�죺
clc;clear
w0=1;w1=linspace(-2,6,1000);a=linspace(0,5,1000);
p=1.8;u1=[0.2,0.5,1];k=2;[w1,a]=meshgrid(w1,a);shit=1.5;
%Ƶ�췽��Z=k^2.*shit.^6./576./w0.^2+(u.^2/9+(w1-k.*shit.^2./(4.*w0)-k.*a.^2./(8.*w0)).^2).*a.^2;
co=['bkr'];
for i=1:length(u1)
    u=u1(i);
    Z=-k.^2.*shit.^6./(576.*w0.^2)+(u.^2./9+(w1-k.*shit.^2./(4.*w0)-k.*a.^2./(8.*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];contour(w1,a,Z,v,co(i));hold on
end
grid on;mesh(w1,a,Z)


%%
%��г���񶯼���ǿ�Ⱥ���ͼ
clc;clear
w0=1;w1=linspace(1,20,1000);a=linspace(0,5,1000);
k=1;u=0.1;p1=[1.5,7];
[w1,a]=meshgrid(w1,a);
%Ƶ�췽��Z=-81.*k.^2.*a.^2.*shit.^2./(64.*w0.^2)+9.*u.^2+(w1-9.*k.*a^2./(8.*w0)-9.*k.*shit.^2./(4.*w0)).^2;
co=['bk'];
for i=1:length(p1)
    p=p1(i);
    shit=-p./(8.*w0.^2);
    Z=-81.*k.^2.*a.^2.*shit.^2./(64.*w0.^2)+9.*u.^2+(w1-9.*k.*a.^2./(8.*w0)-9.*k.*shit.^2./(4.*w0)).^2;
    n=2;% the number of contour layers
    v=[0 0];contour(w1,a,Z,v,co(i));hold on
end
grid on;hold on;
%%
%��г���񶯼���ǿ�Ⱥ���ͼ
clc;clear
w0=1;w1=linspace(-1,-20,1000);a=linspace(0,5,1000);
k=-1;u=0.1;p1=[1.5,7];
[w1,a]=meshgrid(w1,a);
%Ƶ�췽��Z=-81.*k.^2.*a.^2.*shit.^2./(64.*w0.^2)+9.*u.^2+(w1-9.*k.*a^2./(8.*w0)-9.*k.*shit.^2./(4.*w0)).^2;
co=['bk'];
for i=1:length(p1)
    p=p1(i);
    shit=-p./(8.*w0.^2);
    Z=-81.*k.^2.*a.^2.*shit.^2./(64.*w0.^2)+9.*u.^2+(w1-9.*k.*a.^2./(8.*w0)-9.*k.*shit.^2./(4.*w0)).^2;
    n=2;% the number of contour layers
    v=[0 0];contour(w1,a,Z,v,co(i));hold on
end
grid on;hold on
%%
%��г���񶯼���Ƶ�ʵ�Ӱ��
clc;clear
w0=1;p=linspace(0,20,1000);a=linspace(0,4,1000);
k=1;u=0.1;w1=[3,6,10];
[p,a]=meshgrid(p,a);
%Ƶ�췽��Z=-81.*k.^2.*a.^2.*shit.^2./(64.*w0.^2)+9.*u.^2+(w1-9.*k.*a^2./(8.*w0)-9.*k.*shit.^2./(4.*w0)).^2;
co=['bkr'];
for i=1:length(w1)
    w=w1(i);
    shit=-p./(8.*w0.^2);
    Z=-81.*k.^2.*a.^2.*shit.^2./(64.*w0.^2)+9.*u.^2+(w-9.*k.*a.^2./(8.*w0)-9.*k.*shit.^2./(4.*w0)).^2;
    n=2;% the number of contour layers
    v=[0 0];contour(p,a,Z,v,co(i));hold on
end
grid on;

%%
%���г����Ӧ1��
clc;clear all;
w1=linspace(0,10,1000);shit2=1;shit1=[1,2,4]
k=1;u=1;w0=1.0;a=linspace(0,5,1000);
[w1,a]=meshgrid(w1,a);
%Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8*w0)).^2).*a.^2;
co=['bgk'];
for i=1:length(shit1)
    shit11=shit1(i);
    Z=-k.^2.*shit11.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on

%%
%���г����Ӧ2��
clc;clear all;
w1=linspace(-2,10,1000);shit1=4;shit2=[1,2,3];
k=1;u=1;w0=1.0;a=linspace(0,5,1000);
[w1,a]=meshgrid(w1,a);
%Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8*w0)).^2).*a.^2;
co=['bgk'];
for i=1:length(shit2)
    shit22=shit2(i);
    Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit22-3.*k.*a.^2./(8*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on
%%
%���г����Ӧ3��
clc;clear all;
w1=linspace(0,16,1000);shit1=1;shit2=1;
k1=[1,2,3];u=1;w0=1.0;a=linspace(0,3,1000);
[w1,a]=meshgrid(w1,a);
%Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8*w0)).^2).*a.^2;
co=['bgk'];
for i=1:length(k1)
    k=k1(i);
    Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8.*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on

%���г����Ӧ4��
clc;clear all;
w1=linspace(-4,10,1000);shit1=1;shit2=1;
k=1;u1=[0.1,0.5,1];w0=1.0;a=linspace(0,5,1000);
[w1,a]=meshgrid(w1,a);
%Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8*w0)).^2).*a.^2;
co=['bgk'];
for i=1:length(u1)
    u=u1(i);
    Z=-k.^2.*shit1.^2+(u.^2+(w1-k.*shit2-3.*k.*a.^2./(8.*w0)).^2).*a.^2;
    n=2;% the number of contour layers
    v=[0 0];
    contour(w1,a,Z,v,co(i))
    hold on
end
grid on






