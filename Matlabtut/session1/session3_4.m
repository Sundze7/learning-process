x = imread('matwork.jpg');
x=rgb2gray(x);
x=im2double(x);
subplot(2,3,1);
imshow(x);
title('Original image');

a=imadjust(x,[0,1],[0.5,1],0.5);
subplot(2,3,2);
imshow(a);
title('Gamma=0.5');

b=imadjust(x,[0,1],[0,1],10);
subplot(2,3,3);
imshow(b);
title('Bottom=0.9');

c=imadjust(x,[0,1],[0.5,0.9],1.5);
subplot(2,3,4);
imshow(c);
title('Gamma=0.5');

d=imadjust(x,[0,0.5],[0,1],0.5);
subplot(2,3,5);
imshow(d);
title('Gamma=0.5');

e=imadjust(x,[0,1],[0,1],1.5);
subplot(2,3,6);
imshow(e);
title('Gamma=1.5');