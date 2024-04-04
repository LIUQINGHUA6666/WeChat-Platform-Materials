%  º¯Êý
function dydt = Symmetric_duffing(t,y,fs,Acc,a)
ni = nargin;
if ni<5 || ni>5
    error('Please give 5 inputs.');
else
    l=round(fs*t); 
%     u=Acc(l);  
    dydt=[y(2);
        Acc(l)-a*y(2)-(2*pi*1).^2*y(1)-100000*y(1)^3];
end 