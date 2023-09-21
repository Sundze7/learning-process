clc;
%Img = imread('Yello_Python.JPG');
%gray = rgb2gray(Img);
%imshow(Img); title('original image',"Fontsize", 15);
%figure; imhist(Img)
%imshow(gray); title('Gray image', "Fontsize", 20);
%gaussian_filter = imgaussfilt(gray,3);
%imshow(gaussian_filter); title("Filtered image","Fontsize", 15);

%apply canny egde detection
%ced = edge(gaussian_filter,'canny');
%imshow(ced,[]); title("canny edge", 'Fontsize, 10');

I = imread('Yello_Python.JPG');

figure; subplot(1, 2, 1)
imshow(I); subplot(1, 2, 2)
imhist(I, 64)

J = histeq(I);
figure; subplot(2, 2, 1)
imshow(J)
subplot(2, 2, 2); imhist(J, 64)
