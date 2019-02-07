% read and show the original Image
I = imread('circuitmask.tif');
figure
imshow(I);

%SE = strel('Type',w) flat morphological structuring element
SE = strel('square',3)

%SE = strel('cube',20)

%show results
FilteredI = imerode(I,SE);
figure 
imshow(FilteredI)