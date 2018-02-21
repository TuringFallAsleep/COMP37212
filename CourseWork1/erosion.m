function [newI] = erosion(runTime,newI)

for k = 1:runTime
    for i=1:size(newI,1)-2
        for j=1:size(newI,2)-2
            window = newI(i:i+2,j:j+2);
            minValue = min(window(:));
            newI(i,j)=minValue;
        end
    end
end

end