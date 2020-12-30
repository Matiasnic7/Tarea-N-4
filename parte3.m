clc;clear all;
D=0.3;
r=D/2;
Ve=(4/3)*pi*(r^3);
gammaw=9.8e3;
%Valor de theta
theta=15;
T=(Ve*gammaw-Ve*gammaw*0.21)/sind(theta);
rho=1000;
mu=1e-3;
At=pi*(r^2);
%Generando valores a U
U=[0:0.01:10];
Re=(rho.*U.*D)/mu;
Cd=0.2;   %Cd flujo turbulento esfera
Fd=Cd.*(0.5*rho*(U.^2)*At);
%Caso A Valor min flujo turb 1
ee=Fd-T*cosd(theta);
[M,I] = min(abs(ee));
VELOCIDAD1=U(I);
Fd1=Cd*(0.5*rho*(VELOCIDAD1^2)*At);
%Caso B Valor min flujo turb 2
theta2=30;
U2=[0:0.01:10];
T2=(Ve*gammaw-Ve*gammaw*0.21)/sind(theta2);
Re2=(rho.*U2.*D)/mu;
Cd2=Cd;
Fd2=Cd2.*(0.5*rho*(U2.^2)*At);
ee2=Fd2-T2*cosd(theta2);
[M2,I2] = min(abs(ee2));
VELOCIDAD2=U2(I2);
Fd2=Cd*(0.5*rho*(VELOCIDAD2^2)*At);
%Caso C Valor min flujo turb 3
theta3=45;
T3=(Ve*gammaw-Ve*gammaw*0.21)/sind(theta3);
U3=[0:0.01:10];
Re3=(rho.*U3.*D)/mu;
Cd3=Cd;
Fd3=Cd3.*(0.5*rho*(U3.^2)*At);
ee3=Fd3-T3*cosd(theta3);
[M3,I3] = min(abs(ee3));
VELOCIDAD3=U3(I3);
Fd3=Cd*(0.5*rho*(VELOCIDAD3^2)*At);
%Resultados
fprintf(1,"Las velocidades para los casos a,b y c corresponden respectivamente a = \n %.2f m/s , %.2f m/s y %.2f m/s \n",VELOCIDAD1,VELOCIDAD2,VELOCIDAD3);
fprintf(1,"Las fuerzas de arrastre para los casos a,b y c corresponden respectivamente a = \n %.2f N , %.2f N y %.2f N ",Fd1,Fd2,Fd3)




