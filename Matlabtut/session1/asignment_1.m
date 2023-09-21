close all
clear
img = imread('matwork.jpg');
figure;
imshow(img);
title('input');
cols=size(img,2)
rows=size(img,2)
crow=rows/2 + 1
ccols=cols/2 +1
radius= 80;
for i=1:rows
    for j=1:cols
        distance= int8(sqrt((crow-i)*(crow-i)+(ccols-j)*(ccols-j)));
        if distance <= radius+1
           img(i,j,:)= [0,0,0]
           %img(i,j,1)= 0;
           %img(i,j,2)= 0;
           %img(i,j,3)= 0;
        end
    end
end
figure; imshow(img); title('black pixels added'); 
    
    