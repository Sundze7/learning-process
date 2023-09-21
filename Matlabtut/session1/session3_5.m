or = imread('matwork.jpg');
x=rgb2gray(or);
subplot(2,3,1);
imshow(x);
title('Original image');

noise = imnoise(x,'salt & pepper',0.5);
subplot(2,3,2);
imshow(noise);
title('Noise added');

gaussian=imfilter(noise,fspecial('gaussian',[6,6],9));
subplot(2,3,3);
imshow(gaussian);
title('Guassian filter');

average=imfilter(noise,ones(6,6)/36);
subplot(2,3,4);
imshow(average);
title('6 by 6 Average filter');

median=medfilt2(noise,[4,4]);
subplot(2,3,5);
imshow(median);
title('Median filter');

subplot(2,3,6);
imshow(or);
title('Original Colored');