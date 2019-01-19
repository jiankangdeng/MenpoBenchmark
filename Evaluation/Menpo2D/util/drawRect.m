function [img] = drawRect (img , Rect)
    red(1, 1, :) = [255 0 0];
    Rect=round(Rect);
    if size(img, 3) == 1
       img = repmat(img, [1 1 3]);
    end
    imgSize=size(img);
    Rect(1)=max(Rect(1),2);
    Rect(2)=max(Rect(2),2);
    Rect(3)=min(Rect(3),imgSize(2)-1);
    Rect(4)=min(Rect(4),imgSize(1)-1);    
    width=Rect(3)-Rect(1)+1;
    height=Rect(4)-Rect(2)+1;
    
    img(Rect(2):Rect(4), Rect(1) - 1 : Rect(1) + 1, :) = repmat(red, [height 3]);
    img(Rect(2):Rect(4), Rect(3) - 1 : Rect(3) + 1, :) = repmat(red, [height 3]);
    
    img(Rect(2)-1:Rect(2)+1, Rect(1) : Rect(3), :) = repmat(red, [3 width]);
    img(Rect(4)-1:Rect(4)+1, Rect(1) : Rect(3), :) = repmat(red, [3 width]);
end