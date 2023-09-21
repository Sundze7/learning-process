x = imread('matwork.jpg');
x=rgb2gray(x);
subplot(2,2,1);
imshow(x);

subplot(2,2,2);
imhist(x);

hx=histeq(x);
subplot(2,2,3);
imshow(x);

subplot(2,2,4);
imhist(hx)