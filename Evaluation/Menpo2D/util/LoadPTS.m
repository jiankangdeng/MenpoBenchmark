function pts = LoadPTS(ptsPath)
pts=[];
ptsFile=fopen(ptsPath);
if ptsFile>0
    npoints=textscan(ptsFile,'%s %f',1, 'HeaderLines', 1);
    points=textscan(ptsFile, '%f %f',npoints{2},'MultipleDelimsAsOne',2,'Headerlines',2);
    pts=cell2mat(points);
    fclose(ptsFile);
end
end
