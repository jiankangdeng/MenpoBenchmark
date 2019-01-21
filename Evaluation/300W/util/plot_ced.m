function plot_ced(bins, ced_values, legend_entries, title_str, x_limit, ...
                  colors, linewidth, fontsize)
% Check arguments
numberOfCurves = size(ced_values, 2);
if nargin < 5
    x_limit = 0.08;
end
if nargin < 6
    colors = colormap(lines(numberOfCurves));
end
if nargin < 7
    linewidth = 2;
end
if nargin < 8
    fontsize = 12;
end

% Render curves
figure;
for k=1:numberOfCurves
    plot(bins, ced_values(:, k), ...
         'color', colors(k, :), ...
         'linewidth', linewidth, ...
         'marker', 'none', ...
         'linestyle', '-');
    hold on;
end
hold off;

% Enable grid
grid on;
set(gca, 'gridlinestyle', '--');
set(gca, 'fontsize', fontsize);
set(gca, 'ytick', 0:0.1:1);

% Set labels, limits and legend
ylabel('Images Proportion', 'fontsize', fontsize);
xlabel('Point-to-point Normalized RMS Error', 'fontsize', fontsize); 
%title(title_str, 'fontsize', fontsize);
xlim([0, x_limit]);
ylim([0.0, 1.0]);
legend(legend_entries, 'Location', 'NorthWest');

end
