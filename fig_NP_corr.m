clc
clear
% load data
load fig_NP_corr_data.mat
%% 
% Cross sectional VF NP figure
figure
tiledlayout(2,5)  
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"waispsi0"},100,'filled')
[h1,p1] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"waispsi0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"waispsi0"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h1);
str = "rho = ";
str = strcat(str,h);
p = string(p1);
str1 = " p = ";
%str = strcat(str,str1,p);
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("2 week WAIS-PSI")
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartatime0"},100,'filled')
[h2,p2] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartatime0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartatime0"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h2);
str = "rho = ";
str = strcat(str,h);
p = string(p2);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("2 week TMT-A")
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartbtime0"},100,'filled')
[h3,p3] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartbtime0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartbtime0"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h3);
str = "rho = ";
str = strcat(str,h);
p = string(p3);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("2 week TMT-B")
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"ravltsum0"},100,'filled')
[h4,p4] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"ravltsum0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"ravltsum0"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h4);
str = "rho = ";
str = strcat(str,h);
p = string(p4);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("2 week RAVLT immediate memory","FontSize",22)
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"ravlt20mindelayprincipallist70"},100,'filled')
[h5,p5] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"ravlt20mindelayprincipallist70"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"ravlt20mindelayprincipallist70"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h5);
str = "rho = ";
str = strcat(str,h);
p = string(p5);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("2 week RAVLT delayed recall")
nexttile
scatter(M_six_mo{:,"M_VF"},M_six_mo{:,"waispsi3"},100,'filled')
[h6,p6] = corr(M_six_mo{:,"M_VF"},M_six_mo{:,"waispsi3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_VF"},M_six_mo{:,"waispsi3"});
hold on;plot(M_six_mo{:,"M_VF"},brob(1)+brob(2)*M_six_mo{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h6);
str = "rho = ";
str = strcat(str,h);
p = string(p6);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month VF")
ylabel("6 month WAIS-PSI")
nexttile
scatter(M_six_mo{:,"M_VF"},M_six_mo{:,"tmtpartatime3"},100,'filled')
[h7,p7] = corr(M_six_mo{:,"M_VF"},M_six_mo{:,"tmtpartatime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_VF"},M_six_mo{:,"tmtpartatime3"});
hold on;plot(M_six_mo{:,"M_VF"},brob(1)+brob(2)*M_six_mo{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h7);
str = "rho = ";
str = strcat(str,h);
p = string(p7);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month VF")
ylabel("6 month TMT-A")
nexttile
scatter(M_six_mo{:,"M_VF"},M_six_mo{:,"tmtpartbtime3"},100,'filled')
[h8,p8] = corr(M_six_mo{:,"M_VF"},M_six_mo{:,"tmtpartbtime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_VF"},M_six_mo{:,"tmtpartbtime3"});
hold on;plot(M_six_mo{:,"M_VF"},brob(1)+brob(2)*M_six_mo{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h8);
str = "rho = ";
str = strcat(str,h);
p = string(p8);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month VF")
ylabel("6 month TMT-B")
nexttile
scatter(M_six_mo{:,"M_VF"},M_six_mo{:,"ravltsum3"},100,'filled')
[h9,p9] = corr(M_six_mo{:,"M_VF"},M_six_mo{:,"ravltsum3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_VF"},M_six_mo{:,"ravltsum3"});
hold on;plot(M_six_mo{:,"M_VF"},brob(1)+brob(2)*M_six_mo{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h9);
str = "rho = ";
str = strcat(str,h);
p = string(p9);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month VF")
ylabel("6 month RAVLT immediate memory","FontSize",22)
nexttile
scatter(M_six_mo{:,"M_VF"},M_six_mo{:,"ravlt20mindelayprincipallist73"},100,'filled')
[h10,p10] = corr(M_six_mo{:,"M_VF"},M_six_mo{:,"ravlt20mindelayprincipallist73"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_VF"},M_six_mo{:,"ravlt20mindelayprincipallist73"});
hold on;plot(M_six_mo{:,"M_VF"},brob(1)+brob(2)*M_six_mo{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h10);
str = "rho = ";
str = strcat(str,h);
p = string(p10);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month VF")
ylabel("6 month RAVLT delayed recall")
hold off
%% 
% Cross sectional fwFA NP figure
figure
tiledlayout(2,5)  
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"waispsi0"},100,'filled')
[h11,p11] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"waispsi0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"waispsi0"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h11);
str = "rho = ";
str = strcat(str,h);
p = string(p11);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("2 week WAIS-PSI")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartatime0"},100,'filled')
[h12,p12] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartatime0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartatime0"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h12);
str = "rho = ";
str = strcat(str,h);
p = string(p12);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("2 week TMT-A")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartbtime0"},100,'filled')
[h13,p13] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartbtime0"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartbtime0"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h13);
str = "rho = ";
str = strcat(str,h);
p = string(p13);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("2 week TMT-B")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravltsum0"},100,'filled')
[h14,p14] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravltsum0"},'type','Spearman','rows','pairwise','Tail','left');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravltsum0"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h14);
str = "rho = ";
str = strcat(str,h);
p = string(p14);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("2 week RAVLT immediate memory","FontSize",22)
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravlt20mindelayprincipallist70"},100,'filled')
[h15,p15] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravlt20mindelayprincipallist70"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravlt20mindelayprincipallist70"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h15);
str = "rho = ";
str = strcat(str,h);
p = string(p15);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("2 week RAVLT delayed recall")
nexttile
scatter(M_six_mo{:,"M_fwFA"},M_six_mo{:,"waispsi3"},100,'filled')
[h16,p16] = corr(M_six_mo{:,"M_fwFA"},M_six_mo{:,"waispsi3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_fwFA"},M_six_mo{:,"waispsi3"});
hold on;plot(M_six_mo{:,"M_fwFA"},brob(1)+brob(2)*M_six_mo{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h16);
str = "rho = ";
str = strcat(str,h);
p = string(p16);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month fw-FA")
ylabel("6 month WAIS-PSI")
nexttile
scatter(M_six_mo{:,"M_fwFA"},M_six_mo{:,"tmtpartatime3"},100,'filled')
[h17,p17] = corr(M_six_mo{:,"M_fwFA"},M_six_mo{:,"tmtpartatime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_fwFA"},M_six_mo{:,"tmtpartbtime3"});
hold on;plot(M_six_mo{:,"M_fwFA"},brob(1)+brob(2)*M_six_mo{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h17);
str = "rho = ";
str = strcat(str,h);
p = string(p17);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month fw-FA")
ylabel("6 month TMT-A")
nexttile
scatter(M_six_mo{:,"M_fwFA"},M_six_mo{:,"tmtpartbtime3"},100,'filled')
[h18,p18] = corr(M_six_mo{:,"M_fwFA"},M_six_mo{:,"tmtpartbtime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_fwFA"},M_six_mo{:,"tmtpartbtime3"});
hold on;plot(M_six_mo{:,"M_fwFA"},brob(1)+brob(2)*M_six_mo{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h18);
str = "rho = ";
str = strcat(str,h);
p = string(p18);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month fw-FA")
ylabel("6 month TMT-B")
nexttile
scatter(M_six_mo{:,"M_fwFA"},M_six_mo{:,"ravltsum3"},100,'filled')
[h19,p19] = corr(M_six_mo{:,"M_fwFA"},M_six_mo{:,"ravltsum3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_fwFA"},M_six_mo{:,"ravltsum3"});
hold on;plot(M_six_mo{:,"M_fwFA"},brob(1)+brob(2)*M_six_mo{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h19);
str = "rho = ";
str = strcat(str,h);
p = string(p19);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month fw-FA")
ylabel("6 month RAVLT immediate memory","FontSize",22)
nexttile
scatter(M_six_mo{:,"M_fwFA"},M_six_mo{:,"ravlt20mindelayprincipallist73"},100,'filled')
[h20,p20] = corr(M_six_mo{:,"M_fwFA"},M_six_mo{:,"ravlt20mindelayprincipallist73"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_six_mo{:,"M_fwFA"},M_six_mo{:,"ravlt20mindelayprincipallist73"});
hold on;plot(M_six_mo{:,"M_fwFA"},brob(1)+brob(2)*M_six_mo{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h20);
str = "rho = ";
str = strcat(str,h);
p = string(p20);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("6 month fw-FA")
ylabel("6 month RAVLT delayed recall")
hold off
%% 
% Two week M predicts NP
figure
tiledlayout(2,5)  
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"waispsi3"},100,'filled')
[h21,p21] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"waispsi3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"waispsi3"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h21);
str = "rho = ";
str = strcat(str,h);
p = string(p21);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("6 month WAIS-PSI")
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartatime3"},100,'filled')
[h22,p22] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartatime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartatime3"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h22);
str = "rho = ";
str = strcat(str,h);
p = string(p22);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("6 month TMT-A")
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartbtime3"},100,'filled')
[h23,p23] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartbtime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"tmtpartbtime3"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h23);
str = "rho = ";
str = strcat(str,h);
p = string(p23);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("6 month TMT-B")
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"ravltsum3"},100,'filled')
[h24,p24] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"ravltsum3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"ravltsum3"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h24);
str = "rho = ";
str = strcat(str,h);
p = string(p24);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("6 month RAVLT immediate memory","FontSize",22)
nexttile
scatter(M_two_wk{:,"M_VF"},M_two_wk{:,"ravlt20mindelayprincipallist73"},100,'filled')
[h25,p25] = corr(M_two_wk{:,"M_VF"},M_two_wk{:,"ravlt20mindelayprincipallist73"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_VF"},M_two_wk{:,"ravlt20mindelayprincipallist73"});
hold on;plot(M_two_wk{:,"M_VF"},brob(1)+brob(2)*M_two_wk{:,"M_VF"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h25);
str = "rho = ";
str = strcat(str,h);
p = string(p25);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week VF")
ylabel("6 month RAVLT delayed recall")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"waispsi3"},100,'filled')
[h26,p26] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"waispsi3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"waispsi3"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h26);
str = "rho = ";
str = strcat(str,h);
p = string(p26);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("6 month WAIS-PSI")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartatime3"},100,'filled')
[h27,p27] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartatime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartatime3"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h27);
str = "rho = ";
str = strcat(str,h);
p = string(p27);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("6 month TMT-A")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartbtime3"},100,'filled')
[h28,p28] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartbtime3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"tmtpartbtime3"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h28);
str = "rho = ";
str = strcat(str,h);
p = string(p28);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("6 month TMT-B")
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravltsum3"},100,'filled')
[h29,p29] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravltsum3"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravltsum3"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h29);
str = "rho = ";
str = strcat(str,h);
p = string(p29);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("6 month RAVLT immediate memory","FontSize",22)
nexttile
scatter(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravlt20mindelayprincipallist73"},100,'filled')
[h30,p30] = corr(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravlt20mindelayprincipallist73"},'type','Spearman','rows','pairwise','Tail','right');
set(gca,'FontSize',24);
hold on
[brob,stats] = robustfit(M_two_wk{:,"M_fwFA"},M_two_wk{:,"ravlt20mindelayprincipallist73"});
hold on;plot(M_two_wk{:,"M_fwFA"},brob(1)+brob(2)*M_two_wk{:,"M_fwFA"},'LineWidth',3,'Color',[0 0.45 0.74])
h = string(h30);
str = "rho = ";
str = strcat(str,h);
p = string(p30);
str1 = " p = ";
str = str + newline + str1 + p;
title(str,'FontSize',24)
xlabel("2 week fw-FA")
ylabel("6 month RAVLT delayed recall")
hold off