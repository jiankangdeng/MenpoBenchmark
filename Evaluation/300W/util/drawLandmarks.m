function [ image ] = drawLandmarks( image , landmarks ,landmarkColor)
    green(1, 1, :) = landmarkColor;
    if size(image, 3) == 1
       image = repmat(image, [1 1 3]);
    end
    height=size(image,1);
    width=size(image,2);
    pointNum = size(landmarks,1);
    landmarks = round(landmarks) + 1;
    for i = 1 : pointNum
        p = landmarks(i,:);
        if p(1)<3 || p(1)>width-2 || p(2)<3 || p(2)>height-2
            continue;
        end       
        image(p(2) - 1 : p(2) + 1, p(1) - 2 : p(1) + 2, :) = repmat(green, [3 5]);
        image([p(2) - 2 p(2) + 2], p(1) - 1 : p(1) + 1, :) = repmat(green, [2 3]);
    end
end

