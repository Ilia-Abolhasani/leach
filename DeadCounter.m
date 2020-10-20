function [Normal,Advance]=DeadCounter(Network)
Index_Advance=find([Network.IsAdvance]);
Index_Normal=find(~[Network.IsAdvance]);
Normal=sum([Network(Index_Normal).Energy]<=0);
Advance=sum([Network(Index_Advance).Energy]<=0);
end