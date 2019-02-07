% read and show the original Image
I = imread('circuitmask.tif');
figure
imshow(I);

%SE = strel('TYPE',w) flat morphological structuring element
SE = strel('square',3)

%SE = strel('cube',10)

%show results
FilteredI = imopen(I,SE);
figure 
imshow(FilteredI)