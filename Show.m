function Show(Network)
hold on
for i=1:length(Network)-1
    if(Network(i).Energy>0)
        if(Network(i).IsCluster)
            plot(Network(i).X,Network(i).Y,'*','Color',[0,0,0]);            
        else
            if(~Network(i).IsAdvance)
                plot(Network(i).X,Network(i).Y,'o','Color',[0.3,0.7,0.9]);
            else
                plot(Network(i).X,Network(i).Y,'+','Color',[0.6,0.3,0.9]);
            end            
        end
    else
        plot(Network(i).X,Network(i).Y,'red .','LineWidth' ,2);
    end
end
plot(Network(end).X,Network(end).Y,'x','Color',[0.5,0.5,0.5],'LineWidth' ,5);
end