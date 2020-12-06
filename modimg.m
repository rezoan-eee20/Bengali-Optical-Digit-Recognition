function img=modimg(imagen)
% Read image
%imagen=imread('F02.jpg');
% Show image
%figure(1);
%imshow(imagen);
if size(imagen,3)==3 %RGB image
    imagen=rgb2gray(imagen);
end
%figure(2);
%imshow(imagen);
% use median filter
%imagen = medfilt2(imagen,[10 10]);
%figure(3);
%imshow(imagen);
% use adaptive histogram equalisation
imagen = adapthisteq(imagen);
%figure(4);
%imshow(imagen);
% contrast stretching
imagen = imadjust(imagen);
%figure(5);
%imshow(imagen);
                     
% Convert to BW
                      
threshold = graythresh(imagen);
%figure(6);
%imshow(imagen);
%imagen = imcrop(imagen,[20, 12, 725, 128]);

imagen =~im2bw(imagen,threshold);
%figure(7);
%imshow(imagen);
img = bwareaopen(imagen,30);
%imshow(imagen);


