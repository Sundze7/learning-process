kernel = [-1 -1 -1; -1 8 -1; -1 -1 -1];
I = imread('Lioness.jpg');
I1 = imfilter(I,kernel);
I2 = im2bw(I1,0.5);
I3 = im2bw(I1,1);
I4 = im2bw(I1,0);

imshow(I); title('Original image'); subplot(3,3,1);
imshow(I1); title('filtered image'); subplot(3,3,2);
imshow(I2); title('t= 0.5'); subplot(3,3,3);
imshow(I3); title('t= 1'); subplot(3,3,4);
imshow(I4); title('t=0'); subplot(3,3,5);
