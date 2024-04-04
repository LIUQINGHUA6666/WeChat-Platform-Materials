set(0,'defaultfigurecolor','w');
clear all 
clc
M=1;%mass
C=0;%damping
pp=[0.05 0 1 0];%stiffness
fs=10;%sampling frequency
ts=1/10:1/10:20;
[t,Y]=ode45(@(t,y)LQH(t,y,fs,M,C,pp),ts,[1 0]);%ode45 simulation;
y=Y(:,1);%displacement
plot(t,y,'r');%plot the displacement decay curve;
hold on;

y1=1*cos(ts)+0.1*(-3/8*(1^3).*ts.*cos(ts))+0.1*1/32*(1^3).*cos(3.*ts);
plot(ts,y1,'b');%plot the displacement decay curve
hold on;

y2=1*cos((1+0.3/8)*ts)+0.1*1/32*(1^3).*cos((1+0.3/8)*3.*ts);
plot(ts,y2,'k*');%plot the displacement decay curve








y1=Y(:,2);
subplot(2,1,1)
plot(t,y,'r');%plot the displacement decay curve
subplot(2,1,2)
plot(t,y1,'r');%plot the velocity decay curve
set(gca,'FontSize',16,'Fontname','Times New Roman');
title('Free Vibration Decay','fontname','Times New Roman','FontSize',16);
xlabel('Time/s','FontName','Times new roman','FontSize',16)
ylabel('Amplititude/m','FontName','Times new roman','FontSize',16)
grid on 


%画出相图；
plot(y,y1)
%画出三维恢复力图：
plot3(y,y1,(-10*y+100000*y.^3),'*')



%hold on
%subplot(3,1,2)
%z=diff(y);plot(z)

%hold on
%subplot(3,1,3)
%w=diff(z);plot(w)