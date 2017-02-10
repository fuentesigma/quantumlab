clc
clear all
close all
format long

%   -----------------------------------------
%   VALORES DE ENTRADA
%   -----------------------------------------

i       = sqrt(-1);
%hbar    = 6.626e-34;
hbar    = 1;
w0      = 1;
w       = 1.1;
K       = (w0/(2*hbar));
E       = 0.1;
th      = pi;

C1      = cos(th/4);
C2      = sin(th/4);


%   -----------------------------------------
%   TIEMPO/CICLOS
%   -----------------------------------------
N   = 100;
ti  = 0;
tf  = 1; 
t   = linspace(ti,tf,N);

%   -----------------------------------------
%   BASES ORTONORMALES DEL ESPACIO DE ESTADOS
%   -----------------------------------------
E1 = [0;1];
E2 = [1;0];

%   -----------------------------------------
%   MATRICES SPIN
%   -----------------------------------------
sx  = [0,1;1,0]; 
sy  = [0,-i;i,0];
sz  = [1,0;0,-1];

%   -----------------------------------------
%   SIMULACION
%   -----------------------------------------

for n = 1:N
    j = 2;
    
    a1      = C1*exp(+i*K*(t(j)-t(j-1)));
    a2      = C2*exp(-i*K*(t(j)-t(j-1)));
    
    %a1  = C1;
    %a2  = C2;
    
    psi = a1*E1 + a2*E2;
    n1  = norm(psi);
          
    Ul   = cos(w0/(2*hbar)*(t(j)-t(j-1)))*eye(2) - i*sin(w0/(2*hbar)*(t(j)-t(j-1)))*sz; 
    psi  = Ul*psi;
   
    n2  = norm(psi);
    
    %   -----------------------------------------
    %   ECUACIONES DE BLOCH
    %   -----------------------------------------
    
    x0 = 2*( real(psi(1,:)) * conj(real(psi(2,:))) );
    y0 = 2*( imag(psi(1,:)) * conj(imag(psi(2,:))) );
    z0 = abs(psi(1,:))^2    - abs(psi(2,:))^2;
    
    %   -----------------------------------------
    %   MAPEO DE HOPF
    %   -----------------------------------------  
    
    x(n) = psi'*sx*psi;
    y(n) = psi'*sy*psi;
    z(n) = psi'*sz*psi;
    
    CB      = [x0,y0,z0];
    CH(n,:) = [x(n),y(n),z(n)];
    j = j + 1;
end

save('datos.dat','CH');

