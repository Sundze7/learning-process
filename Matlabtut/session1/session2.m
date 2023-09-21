x=imread('matwork.jpg');
subplot(2,2,1); imshow(x);
r=x(:,:,1);
subplot(2,2,2); imshow(r);
g=x(:,:,2);
subplot(2,2,3); imshow(g);
b=x(:,:,3);
subplot(2,2,4); imshow(b)