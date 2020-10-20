function Network=CreateNetwork(Model)
%% Node Structre
Node.X=[];
Node.Y=[];
Node.G=0;
Node.Energy=[];
Node.IsAdvance=[];
Node.IsCluster=0;
Node.Distance=[];
Node.cl=[];
Node.ClusterIndex=[];
%% Create Network
Condition=Model.P*Model.NodeNumber+1;    
Network=repmat(Node,[Model.NodeNumber+1,1]);
Network(end).X=Model.Sink.X;
Network(end).Y=Model.Sink.Y;
Network(end).Energy=inf;
for i=1:Model.NodeNumber
    Network(i).X=unifrnd(1,Model.Area.X,1);
    Network(i).Y=unifrnd(1,Model.Area.Y,1);    
    Network(i).Distance=CalcDistance(Network(i),Network(end));
    if(i>=Condition)
        Network(i).Energy=Model.Energy.Joules;
        Network(i).IsAdvance=0;        
    else
        Network(i).Energy=(Model.Energy.Joules)*(1+Model.Alpha);
        Network(i).IsAdvance=1;   
    end    
end
end