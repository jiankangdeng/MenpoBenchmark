clear all;
clc;

addpath = './util';

load('300W_test_outdoor.mat');

title = '300W-Test-Outdoor';

num = 4;

colors = lines(num);

x_limit = 0.08;

linewidth = 3;

fontsize = 12;

% Render curves
plot_ced(x, y, methods, strrep(title,'_',' '), ...
         x_limit, colors, linewidth, fontsize);

ax = gca;
outerpos = ax.OuterPosition;
ti = ax.TightInset; 
left = outerpos(1) + ti(1);
bottom = outerpos(2) + ti(2);
ax_width = outerpos(3) - ti(1) - ti(3);
ax_height = outerpos(4) - ti(2) - ti(4);
ax.Position = [left bottom ax_width ax_height];

fig = gcf;
fig.PaperPositionMode = 'auto';
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)]* 1.05;
     
print(fig,'-dpdf',[title '.pdf']);
