function plotDepPlotsjiter2(controls,TBItp1,TBItp2,controls2,TBItp12,TBItp22,jitter)

figure;
hold on
a = UnivarScatter(padcat(controls,TBItp1,TBItp2,controls2,TBItp12,TBItp22),'Width',1,'Compression',jitter,...
    'MarkerFaceColor',[hex2rgb('339933');hex2rgb('CC3333');hex2rgb('CC3333');hex2rgb('339933');hex2rgb('CC3333');hex2rgb('CC3333')]);

set(gca,'FontSize',24);

%% Lines 
x1 = a(:,2);
x2 = a(:,3);
y1 = TBItp1;
y2 = TBItp2;

for i = 1:30
   
    plot([x1(i),x2(i)],[y1(i),y2(i)],'Color',hex2rgb('CC3333'),'LineWidth',1)
    
end

x1 = a(:,5);
x2 = a(:,6);
y1 = TBItp12;
y2 = TBItp22;

for i = 1:30
   
    plot([x1(i),x2(i)],[y1(i),y2(i)],'Color',hex2rgb('CC3333'),'LineWidth',1)
    
end
hold off

end