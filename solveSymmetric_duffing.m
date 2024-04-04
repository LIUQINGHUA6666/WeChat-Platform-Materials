%% 正向扫频
clc;clear all;
t01=0.002:0.002:2000;fs1=500; 
A=0.2; 
Acc=chirp(t01,0.01,2000,3)*0.1;
f=0.01+2.99/1000000:2.99/1000000:3;
w=f;
[t,y1]=ode45(@(t,y)Symmetric_duffing(t,y,fs1,Acc,A),t01,[0 0]); 
figure(1);plot(w,y1(:,1),'b');hold on;
%% 反向扫频
t01=0.002:0.002:2000;fs1=500; 
A=0.2; 
Acc=chirp(t01,3,2000,0.01)*0.1;
f=3:-2.99/1000000:0.01+2.99/1000000;
w=f;
[t,y1]=ode45(@(t,y)Symmetric_duffing(t,y,fs1,Acc,A),t01,[0 0]); 
figure(1);plot(w,y1(:,1),'r');hold on;


