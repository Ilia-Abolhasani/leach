function Network=Leach_UsedEnergy(Model,Network)
Normal_Index=find((~[ Network(1:end-1).IsCluster]).*([Network(1:end-1).Energy]>0));
Cluster_Index=find(([ Network(1:end-1).IsCluster]));
for i=Normal_Index
    Distances=zeros(1,length(Cluster_Index));
    Counter=1;
    for j=Cluster_Index
        Distances(Counter)=CalcDistance(Network(i),Network(j));
        Counter=Counter+1;
    end
    [Distance,MinIndex]=min(Distances);
    if(Network(i).Distance>Distance)
        if (Distance>Model.BaseDistance)
            Network(i).Energy=Network(i).Energy- ...
                ( Model.Energy.Send_Bit*(4000) +...
                Model.Energy.Ampli_Upper*4000*( Distance^2));
        else
            Network(i).Energy=Network(i).Energy- ...
                ( Model.Energy.Send_Bit*(4000) + ...
                Model.Energy.Ampli_Under *4000*( Distance^2));
        end
        %% Received Data
        Index=Cluster_Index(MinIndex);
        Network(Index).Energy = Network(Index).Energy-...
            ( (Model.Energy.Receive_Bit+ Model.Energy.Aggregation_Bit)*4000 );
    else
        if (Network(i).Distance>Model.BaseDistance)
            Network(i).Energy=Network(i).Energy ...
                -( ( (Model.Energy.Send_Bit +Model.Energy.Aggregation_Bit)*(4000) ...
                + Model.Energy.Ampli_Upper*4000*( Network(i).Distance^2)));
        else
            Network(i).Energy=Network(i).Energy -...
                (( (Model.Energy.Send_Bit +Model.Energy.Aggregation_Bit)*(4000)  ...
                + Model.Energy.Ampli_Under*4000*( Network(i).Distance^2)));
        end
    end
end
end