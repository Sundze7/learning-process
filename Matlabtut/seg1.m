kernel = [-1 -1 -1; -1 8 -1; -1 -1 -1];
I = imread('Yello_Python.JPG');
I1 = imfilter(I,kernel);
I2 = im2bw(I1,0.5);
I3 = im2bw(I1,1);
I4 = im2bw(I2,0);

imshow(I); title('Original image'); subplot(2,2,1);
imshow(I1); title('filtered image'); subplot(2,2,2);
imshow(I2); title('t= 0.5'); subplot(2,2,3);
imshow(I3); title('t= 1'); subplot(2,2,4);
imshow(I4); title('t=0'); subplot(2,2,5);

