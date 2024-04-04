function dydt = LQH61(t,y,fs,m,c,p)
    l=round(fs*t); %%%���������ź� ����ʱ�����ݶ�Ӧ������ֵ��
          if length(p)==1;
           Fr=p*y(1);   %%%% linear stiffness
          elseif length(p)==2;
           Fr=p*[y(1) 1]';
          elseif length(p)==3;
           Fr=p*[y(1)^2 y(1) 1]';%%%%quadratic nonlinearity
          elseif length(p)==4;
           Fr=p*[y(1)^3 y(1)^2 y(1) 1]';  %%%%cubic nonlinearity
          elseif length(p)==5;
           Fr=p*[y(1)^4 y(1)^3 y(1)^2 y(1) 1]';   
        end
        dydt = [y(2);(0-c*y(2)-Fr)/m];
    end