%%
%次谐波共振：
set(0,'defaultfigurecolor','w');
clc;clear all ;close all;
M=1;C=0.2;p=[100000 0 (2*pi*1).^2 0]; 
ts=0.02:0.02:500;fs=50;a0=1*sin(2*pi*4*ts); F=a0';
[t,Y]=ode45(@(t,y)LQH(t,y,fs,F,M,C,p),ts,[0 0]);%ode45龙格库塔仿真
%不同参数下的输出电压
y1=Y(:,1); plot(ts,y1);axis([220 240 -0.005 0.005]);
y2=Y(:,2);plot(y1(14000:15000),y2(14000:15000));

f=(0:25000-1)/25000*fs;
M=fft(y1);mag=abs(M);plot(f(1:25000/2),mag(1:25000/2));grid on
axis([0 6 0 20]);

%%
%超谐波共振：
set(0,'defaultfigurecolor','w');
clc;clear all ;close all;
M=1;C=0.2;p=[100000 0 (2*pi*1).^2 0]; 
ts=0.02:0.02:500;fs=50;a0=1*sin(2*pi*1/3*ts); F=a0';
[t,Y]=ode45(@(t,y)LQH(t,y,fs,F,M,C,p),ts,[0 0]);%ode45龙格库塔仿真
%不同参数下的输出电压
y1=Y(:,1); plot(ts,y1);axis([220 240 -0.02 0.02]);
y2=Y(:,2);plot(y1(24000:end),y2(24000:end));

f=(0:25000-1)/25000*fs;
M=fft(y1);mag=abs(M);plot(f(1:25000/2),mag(1:25000/2));grid on
axis([0 2 0 20]);

%%
%主谐波共振：
set(0,'defaultfigurecolor','w');
clc;clear all ;close all;
M=1;C=0.2;p=[100000 0 (2*pi*1).^2 0]; 
ts=0.02:0.02:500;fs=50;a0=1*sin(2*pi*1*ts); F=a0';
[t,Y]=ode45(@(t,y)LQH(t,y,fs,F,M,C,p),ts,[0 0]);%ode45龙格库塔仿真
%不同参数下的输出电压
y1=Y(:,1); plot(ts,y1);axis([220 240 -0.025 0.025]);
y2=Y(:,2);plot(y1(24000:end),y2(24000:end));

f=(0:25000-1)/25000*fs;
M=fft(y1);mag=abs(M);plot(f(1:25000/2),mag(1:25000/2));grid on
axis([0 2 0 50]);


%组合谐波共振1：
set(0,'defaultfigurecolor','w');
clc;clear all ;close all;
M=1;C=0.2;p=[100000 0 (2*pi*1).^2 0]; 
ts=0.02:0.02:500;fs=50;a0=1*sin(2*pi*1/3*ts)+1*sin(2*pi*2/3*ts); F=a0';
[t,Y]=ode45(@(t,y)LQH(t,y,fs,F,M,C,p),ts,[0 0]);%ode45龙格库塔仿真
%不同参数下的输出电压
y1=Y(:,1); plot(ts,y1);axis([220 240 -0.025 0.025]);
y2=Y(:,2);plot(y1(24000:end),y2(24000:end));

f=(0:25000-1)/25000*fs;
M=fft(y1);mag=abs(M);plot(f(1:25000/2),mag(1:25000/2));grid on
axis([0 2 0 50]);

%组合谐波共振2：
set(0,'defaultfigurecolor','w');
clc;clear all ;close all;
M=1;C=0.2;p=[100000 0 (2*pi*1).^2 0]; 
ts=0.02:0.02:500;fs=50;a0=1*sin(2*pi*1*ts)+1*sin(2*pi*3*ts); F=a0';
[t,Y]=ode45(@(t,y)LQH(t,y,fs,F,M,C,p),ts,[0 0]);%ode45龙格库塔仿真
%不同参数下的输出电压
y1=Y(:,1); plot(ts,y1);axis([220 240 -0.03 0.03]);
y2=Y(:,2);plot(y1(24000:end),y2(24000:end));

f=(0:25000-1)/25000*fs;
M=fft(y1);mag=abs(M);plot(f(1:25000/2),mag(1:25000/2));grid on
axis([0 6 0 50]);








