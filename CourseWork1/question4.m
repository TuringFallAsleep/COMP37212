% originalI = imread('ChromoBW_detail.bmp');
originalI = imread('eggs.tif');
originalI = double(originalI);

% Pad array with symmetric
paddedI = padarray(originalI,[1 1], 'replicate');

% Initialise the result graph
newI = originalI;

erosionResult = erosion(10,newI);

invertI = imcomplement(erosionResult);

dilationResult = erosion(10,invertI);

normalDilationResult = imcomplement(dilationResult);



subplot(2,2,1),imagesc(originalI);axis image; colormap(gray(256));
subplot(2,2,2),imagesc(erosionResult); axis image; colormap(gray(256));
subplot(2,2,3),imagesc(normalDilationResult); axis image; colormap(gray(256));