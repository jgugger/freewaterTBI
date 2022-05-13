clc
clear
%% 
% Import data
load data_fig2.mat
%% 
% Preprocess NP data prior to PCA
twowk_data=rmmissing(twowk_data); 
sixmo_data=rmmissing(sixmo_data); 
twowk_data.tmtpartatime0 = log(twowk_data.tmtpartatime0);
twowk_data.tmtpartbtime0 = log(twowk_data.tmtpartbtime0);
twowk_data.ravltsum0 = log(twowk_data.ravltsum0);
twowk_data.waispsi0 = log(twowk_data.waispsi0);
sixmo_data.tmtpartatime3 = log(sixmo_data.tmtpartatime3);
sixmo_data.tmtpartbtime3 = log(sixmo_data.tmtpartbtime3);
sixmo_data.ravltsum3 = log(sixmo_data.ravltsum3);
sixmo_data.waispsi3 = log(sixmo_data.waispsi3);
twowk_data.tmtpartatime0=normalize(twowk_data.tmtpartatime0);
twowk_data.tmtpartbtime0=normalize(twowk_data.tmtpartbtime0);
twowk_data.ravltsum0=normalize(twowk_data.ravltsum0);
twowk_data.waispsi0=normalize(twowk_data.waispsi0);
twowk_data.ravltsum0 = -(twowk_data.ravltsum0);
twowk_data.waispsi0 = -(twowk_data.waispsi0);
sixmo_data.ravltsum3 = -(sixmo_data.ravltsum3);
sixmo_data.waispsi3 = -(sixmo_data.waispsi3);
sixmo_data.tmtpartatime3=normalize(sixmo_data.tmtpartatime3);
sixmo_data.tmtpartbtime3=normalize(sixmo_data.tmtpartbtime3);
sixmo_data.ravltsum3=normalize(sixmo_data.ravltsum3);
sixmo_data.waispsi3=normalize(sixmo_data.waispsi3);
rng default
[coeff_np2,score_np2,~,~,explained_np2] = pca(twowk_data{:,["ravltsum0","tmtpartatime0","tmtpartbtime0","waispsi0"]});
[coeff_np6,score_np6,~,~,explained_np6] = pca(sixmo_data{:,["ravltsum3","tmtpartatime3","tmtpartbtime3","waispsi3"]});
twowk_data.PC1_score_2w = score_np2(:,1);
twowk_data.PC2_score_2w = score_np2(:,2);
sixmo_data.PC1_score_6m = score_np6(:,1);
sixmo_data.PC2_score_6m = score_np6(:,2);
%%
% Biplot of 2 week data
biplot(coeff_np2(:,1:2),'Scores',score_np2(:,1:2),'Varlabels',{'tmtpartatime0','tmtpartbtime0',...
    'ravlt_neg','psi_neg'});
%% 
% Biplot of 6 mo data
biplot(coeff_np6(:,1:2),'Scores',score_np6(:,1:2),'Varlabels',{'tmtpartatime3','tmtpartbtime3',...
    'ravlt_neg','psi_neg'});
%% 
% Figure 2 
tiledlayout(2,2)  
nexttile
scatter(twowk_data{:,"M_VF_2w"},twowk_data{:,"PC1_score_2w"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(twowk_data{:,"M_VF_2w"},twowk_data{:,"PC1_score_2w"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(18,5,str,'FontSize',24)
xlabel("2 week VF")
ylabel("2 week PC1")
nexttile
scatter(twowk_data{:,"M_fwFA_2w"},twowk_data{:,"PC1_score_2w"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(twowk_data{:,"M_fwFA_2w"},twowk_data{:,"PC1_score_2w"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(14,5,str,'FontSize',24)
xlabel("2 week fw-FA")
nexttile
scatter(sixmo_data{:,"M_VF_6m"},sixmo_data{:,"PC1_score_6m"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(sixmo_data{:,"M_VF_6m"},sixmo_data{:,"PC1_score_6m"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(13,3,str,'FontSize',24)
xlabel("6 month VF")
ylabel("6 month PC1")
nexttile
scatter(sixmo_data{:,"M_fwFA_6m"},sixmo_data{:,"PC1_score_6m"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(sixmo_data{:,"M_fwFA_6m"},sixmo_data{:,"PC1_score_6m"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(11.5,3,str,'FontSize',24)
xlabel("6 month fw-FA")
%% 
% Supplemenary Figure 2 
tiledlayout(2,2)   
nexttile
scatter(twowk_data{:,"M_TR_2w"},twowk_data{:,"PC1_score_2w"},100,'filled','LineWidth',5)
c = lsline
c.LineWidth = 5;
set(gca,'FontSize',24);
hold on
[h,p] = corr(twowk_data{:,"M_TR_2w"},twowk_data{:,"PC1_score_2w"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(20,5,str,'FontSize',24)
xlabel("2 week std-MD")
ylabel("2 week PC1")
nexttile
scatter(twowk_data{:,"M_FA_2w"},twowk_data{:,"PC1_score_2w"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(twowk_data{:,"M_FA_2w"},twowk_data{:,"PC1_score_2w"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(12,5,str,'FontSize',24)
xlabel("2 week std-FA")
nexttile
scatter(sixmo_data{:,"M_TR_6m"},sixmo_data{:,"PC1_score_6m"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(sixmo_data{:,"M_TR_6m"},sixmo_data{:,"PC1_score_6m"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(15,3,str,'FontSize',24)
xlabel("6 month std-MD")
ylabel("6 month PC1")
nexttile
scatter(sixmo_data{:,"M_FA_6m"},sixmo_data{:,"PC1_score_6m"},100,'filled')
set(gca,'FontSize',24);
hold on
c = lsline
c.LineWidth = 5;
[h,p] = corr(sixmo_data{:,"M_FA_6m"},sixmo_data{:,"PC1_score_6m"},'type','Spearman','rows','pairwise');
h = string(h);
str = "rho = ";
str = strcat(str,h);
p = string(p);
str1 = " p = ";
str = strcat(str,str1,p);
text(12,3,str,'FontSize',24)
xlabel("6 month std-FA")


