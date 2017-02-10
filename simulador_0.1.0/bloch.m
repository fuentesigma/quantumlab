clc;
clear all;
close all;

%   -----------------------------------------
%   IMPORTAR DATOS
%   -----------------------------------------
M = importdata('datos.dat');

R  = 1;
X0 = 0;
Y0 = 0;
Z0 = 0;
N  = 50;

%   -----------------------------------------
%   PARAMETRIZACION DE LA ESFERA
%   -----------------------------------------

[Xs,Ys,Zs] = sphere(N);
Xs = Xs*R + X0;
Ys = Ys*R + Y0;
Zs = Zs*R + Z0;

eje  = -3/2:3/2;
nodo = zeros(length(eje));

ventana = figure('Name','QuantumLab','Color','white');
 
ajuste      = get(ventana, 'Position');
ajuste(1:2) = 0;
ajuste(3:4) = 840;
 
set(ventana, 'Position', ajuste);

contour3(Xs,Ys,Zs,N);

title(' ','fontsize',10,'fontweight','b')

xlabel('x','fontsize',11,'fontweight','b'); 
ylabel('y','fontsize',11,'fontweight','b');
zlabel('z','fontsize',11,'fontweight','b');

surface(Xs,Ys,Zs,'EdgeColor',[.8 .8 .8],'FaceColor','none')
colormap gray;
axis equal;
hold on; 
grid on; 
rotate3d;

plot3(eje,nodo,nodo,'--k','LineWidth',2);
plot3(nodo,eje,nodo,'--k','LineWidth',2);
plot3(nodo,nodo,eje,'--k','LineWidth',2);

%   -----------------------------------------
%   GRAFICAR...
%   -----------------------------------------

% for a = 1:length(M)
%    plot3(M(a,1),M(a,2),M(a,3),'ob','LineWidth',2);
%    pause(1e-15);
% end

plot3(M(:,1),M(:,2),M(:,3),'or','LineWidth',3);


