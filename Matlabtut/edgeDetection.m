I1 = imread('Lioness.jpg');
I = rgb2gray(I1);

A = edge(I,'Prewitt');
I2 = im2bw(A,0.5);

B = edge(I,'Roberts');
I3= im2bw(B,0.5);


C = edge(I,'Sobel');
I4 = im2bw(A,0.5);

imshow(I); title('Original image'); subplot(3,3,1);
imshow(I2); title('prewitt'); subplot(3,3,2);
imshow(I3); title('robert'); subplot(3,3,3);
imshow(I4); title('sobel'); subplot(3,3,4);