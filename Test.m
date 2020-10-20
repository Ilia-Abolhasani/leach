clc;
clear;
close all;
%%
X=unifrnd(1,100,[100,1]);
 Y=unifrnd(1,100,[100,1]);
A=kmeans([X,Y],5)
hold on
plot(X(A==1),Y(A==1),'s','Color',[0.7,0,0])
plot(X(A==2),Y(A==2),'s','Color',[1,0,0])
plot(X(A==3),Y(A==3),'s','Color',[0,1,0])
plot(X(A==4),Y(A==4),'s','Color',[0,0,1])
plot(X(A==5),Y(A==5),'s','Color',[0.5,0,0.5])