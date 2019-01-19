function SavePTS(pts, ptsPath)
fPTS = fopen(ptsPath, 'w');
numPoints = size(pts, 1);
fprintf(fPTS, 'version: 1.0\r\nn_points: %d\r\n{\r\n', numPoints);
for j = 1 : numPoints
    fprintf(fPTS, '%f %f\r\n', pts(j, 1), pts(j, 2));
end
fprintf(fPTS, '}\r\n');
fclose(fPTS);
end
