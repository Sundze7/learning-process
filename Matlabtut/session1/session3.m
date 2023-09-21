x = imread('matwork.jpg');
subplot(2,2,1);
imshow(x);

addimg=imadd(x, 100);
subplot(2,2,2);
imshow(addimg);

subimg=imsubtract(x, 200);
subplot(2,2,3);
imshow(subimg)