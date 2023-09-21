kernel1 = [-1 -1 -1; 2 2 2; -1 -1 -1];
kernel2 = [2 -1 -1; -1 2 -1; -1 -1 2];
kernel3 = [-1 2 -1; -1 2 -1; -1 2 -1];
kernel4 = [-1 -1 2; -1 2 -1; 2 -1 -1];
I = imread('Lioness.JPG');
A = imfilter(I,kernel1);
I1 = im2bw(A,0.5)

B = imfilter(I,kernel2);
I2 = im2bw(B,0.5)

C = imfilter(I,kernel3);
I3 = im2bw(C,0.5)

D = imfilter(I,kernel4);
I4 = im2bw(D,0.5)

imshow(I); title('Original image'); subplot(3,3,1);
imshow(I1); title('k1'); subplot(3,3,2);
imshow(I2); title('k2'); subplot(3,3,3);
imshow(I3); title('k3'); subplot(3,3,4);
imshow(I4); title('k4'); subplot(3,3,5);

