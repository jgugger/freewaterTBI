clc
clear 
%% 
% Import data
load data_fig1.mat; 
%% 
% Figure 1: VF and fw-FA 
plotDepPlotsjiter2(Controls{1:32,'M_VF'},Patients{1:30,'M_VF_2w'},Patients{1:30,'M_VF_6m'},Controls{1:32,'M_fwFA'},Patients{1:30,'M_fwFA_2w'},Patients{1:30,'M_fwFA_6m'},40);
ylabel('SAS');
xticklabels({'Control VF', 'Subacute VF', 'Chronic VF','Control fw-FA', 'Subacute fw-FA', 'Chronic fw-FA'});
text(2,17,'*','FontSize',24,'HorizontalAlignment','center')
text(3,17,'**','FontSize',24,'HorizontalAlignment','center')
%% 
% Supplementary Figure 1: std-MD and std-FA 
plotDepPlotsjiter2(Controls{1:32,'M_TR'},Patients{1:30,'M_TR_2w'},Patients{1:30,'M_TR_6m'},Controls{1:32,'M_FA'},Patients{1:30,'M_FA_2w'},Patients{1:30,'M_FA_6m'},40);
ylabel('SAS');
xticklabels({'Control std-MD', 'Subacute std-MD', 'Chronic std-MD','Control std-FA', 'Subacute std-FA', 'Chronic std-FA'});
text(2,19,'*','FontSize',24,'HorizontalAlignment','center')
text(3,19,'**','FontSize',24,'HorizontalAlignment','center')
text(5,19,'+','FontSize',24,'HorizontalAlignment','center')
text(6,19,'++','FontSize',24,'HorizontalAlignment','center')