function Network=Leach_SelectCluster(Model,Network)
Temp=num2cell(zeros(1,length(Network)));
[Network.IsCluster]=Temp{:};


AliveIndex=([Network(1:end-1).Energy]>0);
Alive=find(AliveIndex);

Input=[[Network(1:end-1).X]',[Network(1:end-1).Y]'];
Input=Input(Alive,:);
K=min([length(Alive),Model.NCluster]);
Kmeans=kmeans(Input,K);

Temp=num2cell(Kmeans);
[Network(Alive).ClusterIndex]=Temp{:};

for i=1:K
    Index=find(AliveIndex .* [Network.ClusterIndex]==i);
    IndexG=find([Network(Index).G]<=0);
    if(length(IndexG)~=0)
        Selected=randsample(IndexG,1);
    else
        Selected=randsample(Index,1);
    end
    Network(Selected).IsCluster=1;
    Network(Selected).G=round(1/Model.P)-1;
    if (Network(Selected).Distance>Model.BaseDistance)
        Network(Selected).Energy=Network(Selected).Energy ...
            -( ( (Model.Energy.Send_Bit +Model.Energy.Aggregation_Bit)*(4000) ...
            + Model.Energy.Ampli_Upper*4000*( Network(Selected).Distance^2)));
    else
        Network(Selected).Energy=Network(Selected).Energy -...
            (( (Model.Energy.Send_Bit +Model.Energy.Aggregation_Bit)*(4000)  ...
            + Model.Energy.Ampli_Under*4000*( Network(Selected).Distance^2)));
    end
end
end