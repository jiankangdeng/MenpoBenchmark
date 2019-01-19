clear all;
clc;

addpath util;

load('semifrontal.mat');
count=length(semifrontal);
pts_num = 68;

% for i=1:length(semifrontal)
%     semifrontal{i}.tmp = LoadPTS(sprintf('./semifrontal/%s.pts',semifrontal{i}.name));
% end

gt=zeros(pts_num,2,count);
for i=1:length(semifrontal)
    gt(:,:,i)=semifrontal{i}.gt;
end

% num = 5;
num = 4;

spacing=0.0005;
sampling = 0:spacing:0.35;
x = sampling;
y = repmat(x',1,num);
semifrontal_errs=cell(num,1);
det=zeros(pts_num,2,count);

% participants = {'yang','he','wu','deng','tmp'};
participants = {'yang','he','wu','deng'};

for iter = 1:num
    for i=1:length(semifrontal)
        det(:,:,i)=semifrontal{i}.(participants{iter});
    end
    semifrontal_errs{iter} = compute_diag_error( gt, det );
    for i=1:numel(sampling)
        y(i,iter) = sum(semifrontal_errs{iter} < sampling(i)) / numel(semifrontal_errs{iter});
    end
end

title = 'Menpo Semifrontal Test Set';

% methods={'J. Yang et al','Z. He et al', 'W. Wu et al', 'J. Deng et al','tmp'};
methods={'J. Yang et al','Z. He et al', 'W. Wu et al', 'J. Deng et al'};

colors = lines(num);

x_limit = 0.03;

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
     
print(fig,'-dpdf',[ title '.pdf']);