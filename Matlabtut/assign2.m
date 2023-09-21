y = imread('Yello_Python.JPG');

subplot(2,2,1);
imshow(y)
title("original image");

y(:,:,1)  = histeq(y(:,:,1));
y(:,:,2)  = histeq(y(:,:,2));
y(:,:,3)  = histeq(y(:,:,3));

subplot(2,2,2);
imshow(y);
title('RGB seperation');

k= imread('Yello_Python.JPG');
j=histeq(k);
subplot(2,2,3);
imshow(k);
title('grayscale equalization')