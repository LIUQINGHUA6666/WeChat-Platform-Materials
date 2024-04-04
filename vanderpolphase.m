clear
hold on
sys = @(t,x) [x(2);-x(1)-5*x(2)*((x(1))^2-1)];
%����΢�ַ���
vectorfield(sys,-3:.3:3,-10:1.3:10);
%����Χ��������
[t,xs] = ode45(sys,[0 30],[1 1]);
%����ode45��sys;
%plot(xs(:,1),'b','Linewidth',2);%����ʱ��ͼ
plot(xs(:,1),xs(:,2),'r','Linewidth',2);%������ͼ��
hold off
axis([-3 3 -10 10])
fsize=15;
set(gca,'XTick',-3:1:3,'FontSize',fsize)
set(gca,'YTick',-10:5:10,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)
hold off