originalI = imread('ChromoBW_detail.bmp');
originalI = double(originalI);

% Pad array with symmetric
paddedI = padarray(originalI,[1 1], 'replicate');

% Initialise the result graph
newI = false(size(originalI));

for i=1:size(paddedI,1)-2
    for j=1:size(paddedI,2)-2
        window = paddedI(i:i+2,j:j+2);
        minValue = min(window(:));
        newI(i,j)=minValue;
    end
end

subplot(1,2,1),imagesc(originalI);axis image; colormap(gray(256));
subplot(1,2,2),imagesc(newI); axis image; colormap(gray(256));