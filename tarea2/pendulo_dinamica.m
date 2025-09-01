function dx = pendulo_dinamica(t, x)

Ip  = 0.0079;      
Mc  = 0.7031;     
lp  = 0.3302;      
Mp  = 0.23;        
Fc  = 0.0;         
Beq = 4.3;         
g   = 9.81;        
Bp  = 0.0024;     


xc     = x(1); 
xcd    = x(2);   
alpha  = x(3);   
alphad = x(4);   

A  = Mc + Mp;
J  = Ip + Mp*lp^2;
H  = Mp*lp*cos(alpha);
Q1 = Fc - Beq*xcd + Mp*lp*alphad^2*sin(alpha);
Q2 = -Bp*alphad - Mp*g*lp*sin(alpha);

D = A*J - H^2;

xdd     = ( J*Q1 - H*Q2 )/D;
alphadd = ( -H*Q1 + A*Q2 )/D;

dx = zeros(4,1);
dx(1) = xcd;
dx(2) = xdd;
dx(3) = alphad;
dx(4) = alphadd;
end