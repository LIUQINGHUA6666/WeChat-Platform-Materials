function sys=HopfBifurcation(~,x)
global mu
X=x(1,:);  
Y=x(2,:);  
% Define the system.
P=Y+mu*X-X.*Y.^2;        
Q=mu*Y-X-Y.^3; 
sys=[P;Q]; 
% End of Programs_12c.

