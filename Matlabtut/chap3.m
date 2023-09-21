x= imread('Yello_Python.JPG');
Mul = immultiply(x,2.5);
Div = imdivide(x,2.5);

subplot(2,2,1);
imshow(x);
title('Original image');
subplot(2,2,2);
imshow(Mul);
title('image after multiplication');
subplot(2,2,3);
imshow(Div);
title('image after division');
