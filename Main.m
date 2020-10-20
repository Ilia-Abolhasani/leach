clc;
clear;
close all;
%% Define
Model=CreateModel();
Network=CreateNetwork(Model);
Leach_Result =Leach_Protocol(Model,Network);
Direct_Result=Direct_Protocol(Model,Network);
%% Show 
% show Dead 
subplot(2,1,1);
title('Died Dead');
hold on;
plot(Leach_Result.Dead.All);
plot(Direct_Result.Dead.All);
legend('Leach' , 'Direct');
% show Packet
subplot(2,1,2);
title('All packet sent');hold on;
plot(Leach_Result.Packet);
plot(Direct_Result.Packet);
legend('Leach' , 'Direct');
ShowNetworks(Leach_Result.Networks,Direct_Result.Networks)