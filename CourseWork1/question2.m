originalI = imread('ChromoBW_detail.bmp');
originalI = double(originalI);

% Pad array with symmetric
paddedI = padarray(originalI,[1 1], 'replicate');

% Initialise the result graph
newI = originalI;

erosionResult = erosion(2,newI);

invertI = imcomplement(erosionResult);

dilationResult = erosion(2,invertI);

normalDilationResult = imcomplement(dilationResult);



subplot(1,3,1),imagesc(originalI);axis image; colormap(gray(256));
subplot(1,3,2),imagesc(erosionResult); axis image; colormap(gray(256));
subplot(1,3,3),imagesc(normalDilationResult); axis image; colormap(gray(256));