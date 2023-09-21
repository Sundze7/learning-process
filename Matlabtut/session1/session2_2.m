x = imread('matwork.jpg');
subplot(2,2,1);
imshow(x);

white=im2bw(x, 0.2);
subplot(2,2,2);
imshow(white);

medium=im2bw(x, 0.6);
subplot(2,2,3);
imshow(medium);

black=im2bw(x, .9);
subplot(2,2,4);
imshow(black)