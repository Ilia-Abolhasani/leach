function Result=Direct_Protocol(Model,Network)
Iteration=Model.Iteration;
Packet.ToBS=zeros(Iteration,1);
Dead.All=zeros(Iteration,1);
Dead.Normal=zeros(Iteration,1);
Dead.Advance=zeros(Iteration,1);

Networks=[];
%% Main loop
for i=1:Iteration
    disp(['It = ' , num2str(i)]);
    if(mod(i-1,Model.SaveIteration)==0)
        Networks=[Networks,Network];
    end    
    if(mod(i-1, round(1/Model.P) )==0)
        Temp=num2cell(zeros(1,length(Network)));
        [Network.G]=Temp{:};
        [Network.cl]=Temp{:};
    end
    [Dead.Normal(i),Dead.Advance(i)]=DeadCounter(Network);
    Dead.All(i)=Dead.Normal(i)+Dead.Advance(i);                   
    Network=Direct_UsedEnergy(Model,Network);        
     Packet.ToBS(i)=Model.NodeNumber-Dead.All(i);    
end
%% Result
Result.Dead=Dead;
Result.Networks=Networks;
Result.Packet=cumsum(Packet.ToBS);
Dead.All(Dead.All==0)=Inf;
[~,Location]=min(Dead.All);
Result.FirstDead=Location;
end