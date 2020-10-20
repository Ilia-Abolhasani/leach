function ShowNetworks(Nets1,Nets2)
figure;
for i=1:length(Nets1)       
    clf();
   subplot(1,2,1);
   title(['Leach ' , ' It : ' , num2str(i)]);
   Show(Nets1(:,i));
   subplot(1,2,2);
   title(['Direct ', ' It : ' , num2str(i)]);
   Show(Nets2(:,i));
   pause(0.001);
end
end