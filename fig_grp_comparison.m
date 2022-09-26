clc
clear 
%% 
% Import data
load fig_grp_comparison_data.mat;

%% 
try
    [cb] = cbrewer2('qual', 'Set3', 12, 'pchip');
catch
    % if you don't have colorbrewer, accept these far more boring colours
    cb = [0.5 0.8 0.9; 1 1 0.7; 0.7 0.8 0.9; 0.8 0.5 0.4; 0.5 0.7 0.8; 1 0.8 0.5; 0.7 1 0.4; 1 0.7 1; 0.6 0.6 0.6; 0.7 0.5 0.7; 0.8 0.9 0.8; 1 1 0.4];
end

cl(1, :) = cb(4, :);
cl(2, :) = cb(1, :);

fig_position = [200 200 600 400]; % coordinates for figures
%% 

f = figure('Position', fig_position);
subplot(1, 2, 1)
h1 = raincloud_plot(MahalanobisTBIRI.M_VF(MahalanobisTBIRI.Sub_type == "HC",:), 'box_on', 1, 'color', cb(10,:),...% 'alpha', 0.5,...
     'box_dodge', 1, 'box_dodge_amount', .15, 'dot_dodge_amount', .15,...
     'box_col_match', 0);
h2 = raincloud_plot(MahalanobisTBIRI.M_VF(MahalanobisTBIRI.Sub_type == "2wk",:), 'box_on', 1, 'color', cb(7,:), 'alpha', 0.5,...
     'box_dodge', 1, 'box_dodge_amount', .35, 'dot_dodge_amount', .35, 'box_col_match', 0);
h3 = raincloud_plot(MahalanobisTBIRI.M_VF(MahalanobisTBIRI.Sub_type == "6mo",:), 'box_on', 1, 'color', cb(3,:), 'alpha', 0.5,...
     'box_dodge', 1, 'box_dodge_amount', .55, 'dot_dodge_amount', .55, 'box_col_match', 0);
legend([h1{1} h2{1} h3{1}], {'Controls', 'TBI 2 Weeks', 'TBI 6 Months'});
title('VF Summary Specific Anomaly Score');
set(gca,'XLim', [0 25], 'YLim', [-.33 .51],'FontSize',24,'ytick',[]);

text(20,-0.14,'*','FontSize',24)
text(20,-0.22,'*','FontSize',24)

box off

subplot(1, 2, 2)
h1 = raincloud_plot(MahalanobisTBIRI.M_fwFA(MahalanobisTBIRI.Sub_type == "HC",:), 'box_on', 1, 'color', cb(10,:),...% 'alpha', 0.5,...
     'box_dodge', 1, 'box_dodge_amount', .15, 'dot_dodge_amount', .15,...
     'box_col_match', 0);
h2 = raincloud_plot(MahalanobisTBIRI.M_fwFA(MahalanobisTBIRI.Sub_type == "2wk",:), 'box_on', 1, 'color', cb(7,:), 'alpha', 0.5,...
     'box_dodge', 1, 'box_dodge_amount', .35, 'dot_dodge_amount', .35,...
     'box_col_match', 0);
h3 = raincloud_plot(MahalanobisTBIRI.M_fwFA(MahalanobisTBIRI.Sub_type == "6mo",:), 'box_on', 1, 'color', cb(3,:), 'alpha', 0.5,...
     'box_dodge', 1, 'box_dodge_amount', .55, 'dot_dodge_amount', .55,...
     'box_col_match', 0);
legend([h1{1} h2{1} h3{1}], {'Controls', 'TBI 2 Weeks', 'TBI 6 Months'});
title('fw-FA Summary Specific Anomaly Score');
set(gca,'XLim', [0 25], 'YLim', [-.33 .51],'FontSize',24,'ytick',[]);
box off