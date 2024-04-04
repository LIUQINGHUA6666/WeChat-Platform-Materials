function dydt = LQHID1(t,y,fs,F,m,c,p)
          l=round(fs*t); %%%读出输入信号 给其时间数据对应的输入值，
          if length(p)==1;
           Fr=p*y(1);   %%%% 此时为线性的k
          elseif length(p)==2;
           Fr=p*[y(1) 1]';
          elseif length(p)==3;
           Fr=p*[y(1)^2 y(1) 1]';
          elseif length(p)==4;
           Fr=p*[y(1)^3 y(1)^2 y(1) 1]';  
          elseif length(p)==5;
           Fr=p*[y(1)^4 y(1)^3 y(1)^2 y(1) 1]';   
          elseif length(p)==6;
           Fr=p*[y(1)^5 y(1)^4 y(1)^3 y(1)^2 y(1) 1]'; 
          elseif length(p)==7;
           Fr=p*[y(1)^6 y(1)^5 y(1)^4 y(1)^3 y(1)^2 y(1) 1]'; 
          elseif length(p)==8;
           Fr=p*[y(1)^7 y(1)^6 y(1)^5 y(1)^4 y(1)^3 y(1)^2 y(1) 1]'; 
          elseif length(p)==9;
           Fr=p*[y(1)^8 y(1)^7 y(1)^6 y(1)^5 y(1)^4 y(1)^3 y(1)^2 y(1) 1]'; 
          elseif length(p)==10;
           Fr=p*[y(1)^9 y(1)^8 y(1)^7 y(1)^6 y(1)^5 y(1)^4 y(1)^3 y(1)^2 y(1) 1]'; 
    end
         dydt = [y(2);(F(l)-c*y(2)-Fr)/m];
end