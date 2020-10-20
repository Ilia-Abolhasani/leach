function Model=CreateModel()
Model.Area.X=300;
Model.Area.Y=300;
Model.Iteration=10000;
Model.NodeNumber=200;
Model.Sink.X=Model.Area.X/2;
Model.Sink.Y=Model.Area.X/2;
Model.PHeadCluster=0.1;
%% Energy Model
Energy.Joules=0.5;
Energy.Send_Bit=50*(10^(-9));
Energy.Receive_Bit=50*(10^(-9));
Energy.Aggregation_Bit=5*(10^-9);
Energy.Ampli_Upper=10^-11;
Energy.Ampli_Under=13*(10^(-16));
Model.P=0.1;
Model.Alpha=1;
Model.BaseDistance=sqrt(Energy.Ampli_Upper/Energy.Ampli_Under);
Model.Energy=Energy;
Model.SaveIteration=100;
Model.NCluster=17;
end